import os
import json
import time
import logging
from pathlib import Path
from typing import Dict, Any, List
from openai import OpenAI
from agents.tools import *
from typing import Optional

logging.basicConfig(level=logging.INFO)
lean_repl_tool_instance = LeanReplTool()

TOOLS: Dict[str, Any] = {
    "lean4_translation": LeanTranslationTool(),
    "lean_write_file": WriteToFileTool(),
    "lean4_repl_runner": lean_repl_tool_instance,
    "lean_retrieval": LeanRetrieverTool(),
    "search_online": SearchOnlineTool(),
    "lean_check_theorem": LeanCheckTheoremTool(lean_repl_tool_instance)
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
    model: str = "gpt-5-mini",   # manager model
    max_steps: int = 24,
    timeout_sec: float = 180.0,
    log_dir: str = "agent_logs",
) -> Dict[str, Any]:
    """
    Orchestrates the Lean agent. Stops immediately when lean4_repl_runner reports a pass.
    Returns status, step count, log path, and history for auditing.
    """
    #import pdb; pdb.set_trace()
    os.makedirs(log_dir, exist_ok=True)
    log_path = os.path.join(log_dir, f"log_{int(time.time())}_{Path(file_path).stem}.jsonl")

    def log(action, **kwargs):
        event = {"action": action, **kwargs}
        with open(log_path, "a", encoding="utf-8") as f:
            f.write(json.dumps(event, ensure_ascii=False) + "\n")

    client = OpenAI()

    
    system_content = """
        You are an expert Lean4 programmer and agent. Your primary mission is to translate a mathematical statement into Lean4 code using the provided tools.
        Your main goal is to produce a Lean4 translation, **not a full proof**. 
        Always use the `lean4_translation` tool as your first step. 
        If helpful, you may first generate an example statement and provide it to the translator. 
        After generating the code, use `lean_write_file` and `lean4_repl_runner` to write and verify it for errors.

        ** When translating, import Mathlib at the top and end the Lean4 statement with `:= by sorry` (not a full proof).

        ## The following steps outline the process:
        1. **Initial Context (Optional, 1 time max)**: If you need context, you may use `lean_retrieval` **once** at the beginning.
        2. **Translate to Lean4**: (Optionally generate an example, then) Use the `lean4_translation` tool or translate manually for a first draft. Remember: translation only, not proof—end with `:= by sorry`.
        3. **Write & Verify**: Use `lean_write_file` and `lean4_repl_runner` to check your code.
        4. **Succeed**: When `lean4_repl_runner` sets its flag to 1, the translation is correct. Respond with: `{ "status": "success" }`. If the flag is 0, iterate and retry.

        ## Contingency Plan: Error Handling
        1. **Error Type: Unknown Theorem or Lemma Name**: Use `lean_check_theorem` to check and correct the names of the key theorems/definitions before running the code again.
        2. **Error Type: Syntax/Tactic Error (not name related)**: Use `search_online` to find examples or documentation about the error.
        3. **Re-test**: Return to `lean4_repl_runner` to check whether the issue is fixed.
        4. **Iterate**: Refine names, fix tactics, or revise syntax based on what you learned, then re-test.

        ### Important Lean4/Mathlib Naming Conventions
        1. **Types/Props use PascalCase**: `IsSimpleGroup`, `IsCyclic`, `Nat.Prime`.
        2. **Lemmas/Functions use snake_case**: `Nat.add_comm`, `List.map`.
        3. **Be Specific**: Prefer `Sylow.exists_subgroup_card_pow_prime` over generic names like 'Sylow Theorem'.
    """

    messages: List[Dict[str, Any]] = [
        {"role": "system", "content": system_content},
        {
            "role": "user",
            "content": (
                f"Translate the following and check correctness: {natural_language_statement}\n"
                f"Save it to: {Path(file_path).name}"
            ),
        },
    ]

    tool_specs = [_tool_spec(t) for t in TOOLS.values()]

    for step in range(1, max_steps + 1):
        # Call model
        try:
            response = client.chat.completions.create(
                model=model, tools=tool_specs, tool_choice="auto",
                messages=messages, timeout=timeout_sec
            )
            msg = response.choices[0].message
            messages.append(msg)
            log("model_call", step=step, has_tools=bool(msg.tool_calls), 
                content=msg.content[:200] if msg.content else None,
                tools_requested=[tc.function.name for tc in msg.tool_calls or []])
        except Exception as e:
            log("api_error", step=step, error=str(e))
            return {"status": "agent_API_error", "step": step, "log_path": log_path}

        # Check explicit success
        if msg.content and '"status": "success"' in msg.content:
            log("success", step=step, type="explicit")
            return {"status": "success", "step": step, "log_path": log_path}
        
        # Run tools
        for tc in msg.tool_calls or []:
            try:
                args = json.loads(tc.function.arguments)
                result = str(TOOLS[tc.function.name].run(**args))[:50000]
                log("tool_run", step=step, tool=tc.function.name, ok=True, 
                    args=args, result=result[:500])
            except Exception as e:
                result = f"ERROR: {e}"
                log("tool_run", step=step, tool=tc.function.name, ok=False, 
                    args=tc.function.arguments, result=result)
            
            messages.append({"role": "tool", "tool_call_id": tc.id, "content": result})
            
            # Auto-success on REPL pass
            if tc.function.name == "lean4_repl_runner" and _repl_passed(result):
                messages.append({"role": "assistant", "content": '{"status": "success"}'})
                log("success", step=step, type="repl_pass")
                return {"status": "success", "step": step, "log_path": log_path}
    
    log("max_steps_reached", steps=max_steps)
    return {"status": "max_steps_reached", "step": max_steps, "log_path": log_path}