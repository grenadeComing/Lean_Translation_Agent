import os
import json
import logging
from pathlib import Path
from typing import Dict, Any, List
from openai import OpenAI
from agents.tools import *
from typing import Optional

logging.basicConfig(level=logging.INFO)
lean_repl_tool_instance = LeanReplTool()

TOOLS: Dict[str, Any] = {
    "lean_write_file": WriteToFileTool(),
    "lean4_repl_runner": lean_repl_tool_instance,
    "lean_retrieval": LeanRetrieverTool(),
}

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
    model: str = "gpt-4o",   # manager model
    max_steps: int = 24,
    timeout_sec: float = 180.0,
    log_dir: str = "agent_logs",
) -> Dict[str, Any]:
    """
    Orchestrates the Lean agent. Stops immediately when lean4_repl_runner reports a pass.
    Returns status, step count, log path, and history for auditing.
    """
    os.makedirs(log_dir, exist_ok=True)
    log_path = os.path.join(log_dir, f"{Path(file_path).stem}.jsonl")

    def log(action, **kwargs):
        event = {"action": action, **kwargs}
        with open(log_path, "a", encoding="utf-8") as f:
            f.write(json.dumps(event, ensure_ascii=False) + "\n")

    client = OpenAI()

    system_content_without_repl = """
    You are an expert Lean4 programmer and agent. Your primary mission is to translate a mathematical statement into Lean4 code using the provided tools.
    Your main goal is to produce a Lean4 translation, **not a full proof**. 
    After generating the code, use `lean_write_file` to write it to a file.

    ** When translating, import Mathlib at the top and end the Lean4 statement with `:= by sorry` (not a full proof).

    ** Tool using guidance **
    lean_write_file: write Lean4 code to disk.
    lean_retrieval: fetch context/examples (lean4 code, nl_statement) pairs of the current natural language to translate.

    ### Important Lean4/Mathlib Naming Conventions
    1. **Types/Props use PascalCase**: `IsSimpleGroup`, `IsCyclic`, `Nat.Prime`.
    2. **Lemmas/Functions use snake_case**: `Nat.add_comm`, `List.map`.
    3. **Be Specific**: Prefer `Sylow.exists_subgroup_card_pow_prime` over generic names like 'Sylow Theorem'.
    **Respond with: `{ "status": "success" }` if you think the translation is done and have written it to disk.**
    """

    messages: List[Dict[str, Any]] = [
        {"role": "system", "content": system_content_without_repl},
        {
            "role": "user",
            "content": (
                f"Translate the following and check correctness: {natural_language_statement}\n"
                f"Save it to: {Path(file_path).name}"
            ),
        },
    ]

    AGENT_TOOLS = {
    "lean_write_file": TOOLS["lean_write_file"],
    "lean_retrieval": TOOLS["lean_retrieval"], 
    "lean4_repl_runner": TOOLS["lean4_repl_runner"],    
    }

    tool_specs = [_tool_spec(t) for t in AGENT_TOOLS.values()]

    for step in range(1, max_steps + 1):
        # Call model
        try:
            response = client.chat.completions.create(
                model=model, tools=tool_specs, tool_choice="auto",
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
            return {"status": "agent_API_error", "step": step, "log_path": log_path}

        # Check explicit success
        if msg.content and '"status": "success"' in msg.content:
            log("success", step=step, type="explicit")
            return {"status": "success", "step": step, "log_path": log_path}
        
        if msg.tool_calls:
            tc = msg.tool_calls[0]   # Only use the first tool call
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
                return {"status": "success", "step": step, "log_path": log_path}

    
    log("max_steps_reached", steps=max_steps)
    return {"status": "max_steps_reached", "step": max_steps, "log_path": log_path}
