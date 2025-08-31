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
    """
    Robustly detect a REPL pass from tool output, even if nested JSON is stringified
    or we've only logged a head of the result string.
    """
    # Try top-level JSON
    try:
        obj = json.loads(result_str)
        if isinstance(obj, dict):
            if obj.get("ok") and (obj.get("repl_pass") in (1, True)):
                return True
            # Some tools embed JSON as strings in 'repl_output' or 'stdout'
            for k in ("repl_output", "stdout"):
                v = obj.get(k)
                if isinstance(v, str):
                    try:
                        inner = json.loads(v)
                        if isinstance(inner, dict) and (inner.get("repl_pass") in (1, True)):
                            return True
                    except Exception:
                        pass
    except Exception:
        pass
    # Fallback substring checks (handles truncated heads / single quotes)
    s = result_str
    return ('"repl_pass": 1' in s) or ("'repl_pass': 1" in s) or ('"repl_pass": true' in s)

def call_openai_lean_agent(
    file_path: str,
    natural_language_statement: str,
    model: str = "gpt-4.1",   # manager model
    max_steps: int = 24,
    timeout_sec: float = 180.0,
    log_dir: str = "agent_logs",
) -> Dict[str, Any]:
    """
    Orchestrates the Lean agent. Stops immediately when lean4_repl_runner reports a pass.
    Returns status, step count, log path, and history for auditing.
    """
    os.makedirs(log_dir, exist_ok=True)
    log_path = os.path.join(log_dir, f"log_{int(time.time())}_{Path(file_path).stem}.jsonl")

    def log_event(event: Dict[str, Any]) -> None:
        event["_ts"] = time.time()
        with open(log_path, "a", encoding="utf-8") as f:
            f.write(json.dumps(event, ensure_ascii=False) + "\n")

    client = OpenAI()

    # --- System prompt (your original content with “emit success on REPL pass”) ---
    system_content = (
        "You are an expert Lean4 programmer and agent. Your primary mission is to generate a correct Lean4 proof for the user's request.\n\n"
        "### Your Primary Strategy: Write Code First!\n"
        "Your main goal is to produce a complete Lean4 proof. Do not spend too much time searching for theorems. "
        "Your best strategy is to **write a first draft quickly and then use the verifier to find errors.**\n\n"
        "1.  **Initial Context (Optional, 1 time max)**: If you need context, you may use `lean_retrieval` **once** at the beginning.\n"
        "2.  **Translate to Lean4**: Immediately after retrieval (or as your first step), call `lean4_translation` to generate a full Lean4 proof. Make a confident first attempt.\n"
        "3.  **Write & Verify**: Use `lean_write_file` and `lean4_repl_runner` to check your code.\n"
        "4.  **Succeed**: If the `lean4_repl_runner` flag is 1, you are done. Respond with: {\"status\": \"success\"}\n\n"
        "### Contingency Plan: What to do on ERROR 🤔\n"
        "1. **Check Theorem Names First**: Before sending any code to `lean4_repl_runner`, always call the `lean_check_theorem` tool on the key theorems and definitions you used. Replace informal names with the correct mathlib names.\n"
        "2. **Run the Code**: After correcting theorem names, use `lean4_repl_runner` to compile and test your Lean code.\n"
        "3. **If Errors Remain**: Stop and think. Analyze the error message.\n"
        "   * If it is still an **unknown identifier** error, re-check with `lean_check_theorem`.\n"
        "   * If it is a **syntax/tactic error** (like `begin`, `end`, `apply`, `simp`, `have`), use `search_online` to find examples and docs.\n"
        "4. **Decide Your Next Step**: Fix names, adjust tactics, or refine syntax based on your findings.\n"
        "5. **Re-test**: After making changes, always return to `lean4_repl_runner` to verify the fix.\n"
        "### Important Lean4/Mathlib Naming Conventions\n"
        "1.  **Types/Props use PascalCase**: `IsSimpleGroup`, `IsCyclic`, `Nat.Prime`.\n"
        "2.  **Lemmas/Functions use snake_case**: `Nat.add_comm`, `List.map`.\n"
        "3.  **Be Specific**: e.g., use `Sylow.exists_subgroup_card_pow_prime` rather than just 'Sylow Theorem'.\n"
    )

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

    status: str = "incomplete"
    final_code: Optional[str] = None
    history: List[Dict[str, Any]] = []
    repl_pass_count: int = 0

    for step in range(1, max_steps + 1):
        logging.info(f"--- Step {step} ---")
        try:
            response = client.chat.completions.create(
                model=model,
                tools=tool_specs,
                tool_choice="auto",
                messages=messages,
                timeout=timeout_sec,
            )
        except Exception as e:
            logging.error(f"OpenAI API error at step {step}: {e}")
            log_event({"type": "error", "step": step, "error": str(e)})
            status = "api_error"
            break

        msg = response.choices[0].message
        log_event({"type": "assistant_raw", "step": step, "resp": msg.model_dump()})

        messages.append(msg)

        # If the assistant sent plain content, try to parse success JSON
        if msg.content:
            try:
                parsed = json.loads(msg.content)
                if isinstance(parsed, dict) and parsed.get("status") == "success":
                    logging.info("✅ Agent signaled success via JSON.")
                    status = "success"
                    break
            except json.JSONDecodeError:
                log_event({"type": "assistant_text", "step": step, "text": msg.content})

        # SAFELY iterate tool calls (avoid NoneType crash)
        tool_calls = getattr(msg, "tool_calls", None) or []
        for tc in tool_calls:
            tool_name = tc.function.name
            result_ok = True
            try:
                args = json.loads(tc.function.arguments)

                # Some tools may pass JSON-encoded strings; normalize them
                if "history" in args and isinstance(args["history"], str):
                    try:
                        args["history"] = json.loads(args["history"])
                    except Exception:
                        pass
                if "retrieved_examples" in args and isinstance(args["retrieved_examples"], str):
                    try:
                        args["retrieved_examples"] = json.loads(args["retrieved_examples"])
                    except Exception:
                        pass

                logging.info(f"Calling tool: {tool_name}({args})")
                log_event({"type": "tool_call", "step": step, "tool": tool_name, "args": args})

                result = TOOLS[tool_name].run(**args)
                result_str = str(result)[:200_000]

            except Exception as e:
                logging.error(f"❌ Error calling tool {tool_name}: {e}")
                result_str = f"__ERROR__: {repr(e)}"
                result_ok = False

            # Feed tool result back to the model
            messages.append({"role": "tool", "tool_call_id": tc.id, "content": result_str})

            # Short history record
            history.append({
                "step": step,
                "tool": tool_name,
                "args": args if isinstance(args, dict) else {"_raw_args": str(args)},
                "result_head": result_str[:500],
                "ok": result_ok
            })
            log_event({
                "type": "tool_result",
                "step": step,
                "tool": tool_name,
                "ok": result_ok,
                "result_head": result_str[:500],
            })

            # 🔑 TRUST THE VERIFIER: stop immediately on REPL pass
            if tool_name == "lean4_repl_runner" and _repl_passed(result_str):
                repl_pass_count += 1
                logging.info(f"✅ lean4_repl_runner PASS (count={repl_pass_count}). Marking success and stopping.")
                # Optional: inject the success JSON so transcript is self-consistent
                messages.append({"role": "assistant", "content": json.dumps({"status": "success"})})
                log_event({"type": "auto_success_from_repl", "step": step, "pass_count": repl_pass_count})
                status = "success"
                break  # break out of tool_calls loop

        if status == "success":
            break  # break out of step loop

    else:
        # for/else: hit max steps without success
        logging.warning(f"⚠️ Reached max steps ({max_steps}). Stopping.")
        log_event({"type": "max_steps_reached", "steps": max_steps})
        status = "max_steps_reached"

    return {
        "status": status,
        "total_steps": step,
        "final_code": final_code,
        "log_path": log_path,
        "history": history,
        "repl_pass_count": repl_pass_count,
    }