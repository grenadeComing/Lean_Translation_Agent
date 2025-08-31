import os
import json
import time
import logging
from pathlib import Path
from typing import Dict, Any, List
from openai import OpenAI
from agents.tools import *

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

def call_openai_lean_agent(file_path: str, 
                           natural_language_statement: str, 
                           model: str = "gpt-4o", 
                           max_steps: int = 24, 
                           log_dir: str = ".agent_logs") -> Dict[str, Any]:
    
    os.makedirs(log_dir, exist_ok=True)
    log_path = os.path.join(log_dir, f"log_{int(time.time())}_{Path(file_path).stem}.jsonl")

    def log_event(event: Dict[str, Any]) -> None:
        event["_ts"] = time.time()
        with open(log_path, "a", encoding="utf-8") as f:
            f.write(json.dumps(event, ensure_ascii=False) + "\n")

    client = OpenAI()
    messages: List[Dict[str, Any]] = [
    {
        "role": "system", 
        "content": (
            "You are an expert Lean4 programmer and agent. Your primary mission is to generate a correct Lean4 proof for the user's request.\n\n"
            "### Your Primary Strategy: Write Code First!\n"
            "Your main goal is to produce a complete Lean4 proof. Do not spend too much time searching for theorems. Your best strategy is to **write a first draft quickly and then use the verifier to find errors.**\n\n"
            "1.  **Initial Context (Optional, 1 time max)**: If you need context, you may use `lean_retrieval` **once** at the beginning.\n"
            "2.  **Translate to Lean4**: Immediately after retrieval (or as your first step), call `lean4_translation` to generate a full Lean4 proof. Make a confident first attempt.\n"
            "3.  **Write & Verify**: Use `lean_write_file` and `lean4_repl_runner` to check your code.\n"
            "4.  **Succeed**: If the lean4_repl_runner flag is 1, you are done. Respond with: {\"status\": \"success\"}\n\n"

            # --- The contingency plan remains the same but will now be triggered correctly ---
            # In agents/runner.py, inside the system prompt content

            "### Contingency Plan: What to do on ERROR 🤔\n"
            "1. **Check Theorem Names First**: Before sending any code to `lean4_repl_runner`, always call the `lean_check_theorem` tool on the key theorems and definitions you used. Replace informal names with the correct mathlib names.\n"
            "\n"
            "2. **Run the Code**: After correcting theorem names, use `lean4_repl_runner` to compile and test your Lean code.\n"
            "\n"
            "3. **If Errors Remain**: Stop and think. Analyze the error message.\n"
            "   * If it is still an **unknown identifier** error, re-check with `lean_check_theorem`.\n"
            "   * If it is a **syntax/tactic error** (like `begin`, `end`, `apply`, `simp`, `have`), these are grammar issues. Use `search_online` with queries like 'lean4 tactic have usage' or 'lean4 syntax error begin end block' to find examples and docs.\n"
            "\n"
            "4. **Decide Your Next Step**: Fix names, adjust tactics, or refine syntax based on your findings.\n"
            "\n"
            "5. **Re-test**: After making changes, always return to `lean4_repl_runner` to verify the fix.\n"

            "### Important Lean4/Mathlib Naming Conventions\n"
            "To find theorems using the lean_check_theorem, you must use the correct naming scheme. If `lean_check_theorem` returns 'unknown identifier', check these rules:\n"
            "1.  **Types and Propositions use PascalCase**: `IsSimpleGroup`, `IsCyclic`, `Nat.Prime`.\n"
            "    - INCORRECT: `is_simple_group`, `is_cyclic`\n"
            "    - CORRECT: `IsSimpleGroup`, `IsCyclic`\n"
            "2.  **Lemmas and Functions use snake_case**: `Nat.add_comm`, `List.map`.\n"
            "3.  **Be Specific**: Broad concepts like 'Sylow's Theorem' don't exist as one theorem. You must look for specific parts, like `Sylow.exists_subgroup_card_pow_prime`.\n\n"
            

        )
        },
        {"role": "user", "content": f"Translate the following and check correctness: {natural_language_statement}\nSave it to: {Path(file_path).name}"}
    ]

    tool_specs = [_tool_spec(t) for t in TOOLS.values()]
    history: List[Dict[str, Any]] = []
    status = "incomplete"
    final_code = None
    step = 0

    for step in range(1, max_steps + 1):
        logging.info(f"--- Step {step} ---")
        try:
            response = client.chat.completions.create(model=model, tools=tool_specs, tool_choice="auto", messages=messages, timeout=180.0)
        except Exception as e:
            logging.error(f"OpenAI API error at step {step}: {e}")
            log_event({"type": "error", "step": step, "error": str(e)})
            status = "api_error"
            break
        
        msg = response.choices[0].message
        log_event({"type": "assistant_raw", "step": step, "resp": msg.model_dump()})
        messages.append(msg)
        
        if msg.content:
            try:
                parsed_json = json.loads(msg.content)
                if isinstance(parsed_json, dict) and parsed_json.get("status") == "success":
                    logging.info("✅ Agent signaled success.")
                    status = "success"  # Changed from "verified" to "success"
                    break 
            except json.JSONDecodeError:
                log_event({"type": "assistant_text", "step": step, "text": msg.content})
        
        
        for tc in msg.tool_calls:
            tool_name = tc.function.name
            result_ok = True
            try:
                args = json.loads(tc.function.arguments)
                if 'history' in args and isinstance(args['history'], str):
                    args['history'] = json.loads(args['history'])
                if 'retrieved_examples' in args and isinstance(args['retrieved_examples'], str):
                    args['retrieved_examples'] = json.loads(args['retrieved_examples'])
                logging.info(f"Calling tool: {tool_name}({args})")
                log_event({"type": "tool_call", "step": step, "tool": tool_name, "args": args})
                result = TOOLS[tool_name].run(**args)
                result_str = str(result)[:200_000]
            except Exception as e:
                print(f"    ❌ Error calling tool {tool_name}: {e}")
                result_str = f"__ERROR__: {repr(e)}"
                result_ok = False
            messages.append({"role": "tool", "tool_call_id": tc.id, "content": result_str})
            history.append({"step": step, "tool": tool_name, "args": args, "result_head": result_str[:500], "ok": result_ok})
            log_event({"type": "tool_result", "step": step, "tool": tool_name, "result_head": result_str[:500], "ok": result_ok})
    else:
        logging.warning(f"⚠️ Reached max steps ({max_steps}). Stopping.")
        log_event({"type": "max_steps_reached", "steps": max_steps})
        status = "max_steps_reached"

    return {"status": status, "total_steps": step, "final_code": final_code, "log_path": log_path, "history": history}