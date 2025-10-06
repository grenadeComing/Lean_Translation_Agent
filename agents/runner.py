import os
import json
import logging
import re
from functools import lru_cache
from pathlib import Path
from typing import Dict, Any, List, Optional
from openai import OpenAI
from agents.tools import *

logging.basicConfig(level=logging.INFO)
lean_repl_tool_instance = LeanReplTool()

# all possible tools
TOOLS: Dict[str, Any] = {
    "lean4_translation": LeanTranslationTool(),
    "lean_write_file": WriteToFileTool(),
    "lean4_repl_runner": lean_repl_tool_instance,
    "lean_retrieval": LeanRetrieverTool(),
    "search_online": SearchOnlineTool(),
    "lean_check_theorem": LeanCheckTheoremTool(lean_repl_tool_instance)
}

BASE_DIR = Path(__file__).resolve().parent
CONFIGS_DIR = BASE_DIR / "configs"


def _resolve_config_path(config: Optional[str]) -> Path:
    if config is None:
        path = CONFIGS_DIR / "default.json"
    else:
        candidate = Path(config)
        if candidate.is_absolute():
            path = candidate
        else:
            if not candidate.suffix:
                candidate = candidate.with_suffix(".json")
            path = CONFIGS_DIR / candidate
            if not path.exists():
                path = BASE_DIR / candidate
    path = path.resolve()
    if not path.exists():
        raise FileNotFoundError(f"Runner config not found: {path}")
    return path


# read the config file and load the system prompt accordingly
def _load_runner_config(path_str: str) -> Dict[str, Any]:
    path = Path(path_str).resolve()
    with open(path, "r", encoding="utf-8") as f:
        cfg = json.load(f)

    prompt_path = Path(cfg["system_prompt_file"])
    if not prompt_path.is_absolute():
        prompt_path = (path.parent / prompt_path).resolve()

    with open(prompt_path, "r", encoding="utf-8") as pf:
        cfg["system_prompt"] = pf.read().strip()

    cfg["enabled_tools"] = list(cfg["enabled_tools"])
    return cfg


def _tool_spec(tool_obj: Any) -> Dict[str, Any]:
    """
    Generate OpenAI tool specification from a tool object.
    Now handles both simple string parameters and complex schema objects.
    """
    # Check if the tool has a complex parameters schema (new format)
    if hasattr(tool_obj, 'parameters') and isinstance(tool_obj.parameters, dict) and 'type' in tool_obj.parameters:
        # This is a complex schema - use it directly
        return {
            "type": "function",
            "function": {
                "name": tool_obj.name,
                "description": tool_obj.description,
                "parameters": tool_obj.parameters,  # Use the schema as-is
            },
        }
    else:
        # Fall back to the old simple string format for backward compatibility
        return {
            "type": "function",
            "function": {
                "name": tool_obj.name,
                "description": tool_obj.description,
                "parameters": {
                    "type": "object",
                    "properties": { name: {"type": "string", "description": desc} for name, desc in tool_obj.parameters.items() },
                    "required": list(tool_obj.parameters.keys()),
                },
            },
        }

def _repl_passed(result_str: str) -> bool:
    """Check if lean4_repl_runner indicates success"""
    if "'repl_pass': 1" in result_str or '"repl_pass": 1' in result_str:
        return True
    return False

# ===================================================agent logic
def call_openai_lean_agent(
    file_path: str,
    natural_language_statement: str,
    model: str = "gpt-5-nano",
    max_steps: int = 24,
    timeout_sec: float = 180.0,
    log_dir: str = "agent_running_logs",
    config: Optional[str] = None,
) -> Dict[str, Any]:
    """
    Orchestrates the Lean agent. Stops immediately when lean4_repl_runner reports a pass.
    Tool availability and system prompt are controlled via the ``config`` file.
    Returns status, step count, log path, and history for auditing.
    """
    os.makedirs(log_dir, exist_ok=True)
    log_path = os.path.join(log_dir, f"{Path(file_path).stem}.jsonl")

    config_path = _resolve_config_path(config)
    config_data = _load_runner_config(str(config_path))
    enabled_tool_names = config_data.get("enabled_tools") or list(TOOLS.keys())
    missing_tools = [name for name in enabled_tool_names if name not in TOOLS]
    if missing_tools:
        raise ValueError(f"Config requests unknown tools: {missing_tools}")

    def log(action, **kwargs):
        event = {"action": action, **kwargs}
        with open(log_path, "a", encoding="utf-8") as f:
            f.write(json.dumps(event, ensure_ascii=False) + "\n")

    log("config", path=str(config_path))

    client = OpenAI()

    system_prompt = config_data.get("system_prompt")
    model_to_use = model

    agent_tools = {name: TOOLS[name] for name in enabled_tool_names}
    tool_specs = [_tool_spec(t) for t in agent_tools.values()]

    messages: List[Dict[str, Any]] = [
        {"role": "system", "content": system_prompt},
        {
            "role": "user",
            "content": (
                f"Translate the following and check correctness: {natural_language_statement}\n"
                f"Save it to: {Path(file_path).name}"
            ),
        },
    ]

    for step in range(1, max_steps + 1):
        # Call model
        try:
            response = client.chat.completions.create(
                model=model_to_use, tools=tool_specs, tool_choice="auto",
                messages=messages, timeout=timeout_sec
            )
            msg = response.choices[0].message

            # append the message accordingly
            messages.append({
                "role": "assistant",
                "content": msg.content or "",
                "tool_calls": [
                    {
                        "id": msg.tool_calls[0].id,
                        "type": "function",
                        "function": {
                            "name": msg.tool_calls[0].function.name,
                            "arguments": msg.tool_calls[0].function.arguments
                        }
                    }
                ] if msg.tool_calls else None
            })

            log("model_call", step=step, has_tools=bool(msg.tool_calls),
                content=msg.content[:200] if msg.content else None,
                tools_requested=[tc.function.name for tc in msg.tool_calls or []])
            
        except Exception as e:
            log("agent_API_error", step=step, error=str(e))
            return {
                "status": "agent_API_error",
                "step": step,
                "log_path": log_path,
            }

        # Check explicit success, then quit immediately
        explicit_success = False
        if msg.content:
            try:
                parsed_content = json.loads(msg.content)
            except json.JSONDecodeError:
                parsed_content = None

            if isinstance(parsed_content, dict):
                explicit_success = parsed_content.get("status") == "success"
            elif re.search(r'"status"\s*:\s*"success"', msg.content):
                explicit_success = True

        if explicit_success:
            log("success", step=step, type="explicit")
            return {
                "status": "success",
                "step": step,
                "log_path": log_path,
            }
        
        # if not quit, there should be a tool call
        if msg.tool_calls:
            tc = msg.tool_calls[0]   # Only call the first tool
            try:
                args = json.loads(tc.function.arguments or "{}")
                result_obj = TOOLS[tc.function.name].run(**args)
                result_str = (result_obj if isinstance(result_obj, str)
                            else json.dumps(result_obj, ensure_ascii=False))
                log("tool_run", step=step, tool=tc.function.name, ok=True,
                    args=args, result=result_str[:500])
            except Exception as e:
                result_str = f"ERROR: {e}"
                log("tool_run", step=step, tool=tc.function.name, ok=False,
                    args=tc.function.arguments, result=result_str)

            messages.append({"role": "tool", "tool_call_id": tc.id, "content": result_str})

            # Auto-success on REPL pass
            if tc.function.name == "lean4_repl_runner" and _repl_passed(result_str):
                log("success", step=step, type="repl_pass")
                return {
                    "status": "success",
                    "step": step,
                    "log_path": log_path,
                }

    repl_tool = TOOLS.get("lean4_repl_runner")
    if repl_tool is not None and Path(file_path).exists():
        try:
            repl_result = repl_tool.run(path=file_path)
            if isinstance(repl_result, dict) and repl_result.get("repl_pass") == 1:
                log("success", step=max_steps, type="post_repl")
                return {
                    "status": "success",
                    "step": max_steps,
                    "log_path": log_path,
                }
        except Exception as repl_error:
            log("post_repl_error", step=max_steps, error=str(repl_error))

    log("max_steps_reached", steps=max_steps)
    return {
        "status": "max_steps_reached",
        "step": max_steps,
        "log_path": log_path,
    }
