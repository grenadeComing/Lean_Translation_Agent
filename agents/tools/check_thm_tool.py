# in agents/tools/check_theorem_tool.py

import json
import logging
from pathlib import Path
from typing import Dict, Any

from .base_tool import BaseTool
from .run_lean_tool import LeanReplTool # Corrected the import path based on your file structure

class LeanCheckTheoremTool(BaseTool):
    # ... (name, description, parameters, and __init__ are the same) ...
    name = "lean_check_theorem"
    description = (
        "Checks for the existence and official definition of a theorem, definition, or lemma in Lean's Mathlib. "
        "Returns all found definitions and errors. Use this to verify the exact name and structure of a concept. "
        "Input must be a single, valid Lean identifier (e.g., 'IsSolvable', 'Nat.Prime')."
    )
    parameters = {
        "type": "object",
        "properties": {
            "name_to_check": {
                "type": "string",
                "description": "The exact name of the theorem, definition, or lemma to check."
            }
        },
        "required": ["name_to_check"]
    }

    def __init__(self, repl_tool: LeanReplTool):
        super().__init__()
        if not isinstance(repl_tool, LeanReplTool):
            raise TypeError("repl_tool must be an instance of LeanReplTool")
        self.repl_tool = repl_tool
        
    def run(self, name_to_check: str, **kwargs) -> Dict[str, Any]:
        if not self.allowed_root:
            return {"ok": False, "error": "allowed_root is not set in BaseTool."}

        temp_file_path = Path(self.allowed_root) / f"temp_check_{name_to_check}.lean"
        lean_code = f"import Mathlib\n\n#check {name_to_check}\n"

        try:
            with open(temp_file_path, "w", encoding="utf-8") as f:
                f.write(lean_code)

            result = self.repl_tool.run(path=str(temp_file_path))

            if not result.get("ok"):
                return result

            stdout = result.get("stdout", "") or ""
            stderr = result.get("stderr", "") or ""
            repl_pass = result.get("repl_pass")

            raw_output = result.get("repl_output")
            repl_data = result.get("repl_json")

            if repl_data is None and raw_output:
                try:
                    repl_data = json.loads(raw_output)
                except json.JSONDecodeError:
                    repl_data = None

            definitions = []
            errors = []

            if isinstance(repl_data, dict):
                messages = []

                top_messages = repl_data.get("messages")
                if isinstance(top_messages, list):
                    messages.extend(top_messages)

                for tactic in repl_data.get("tactics", []):
                    if isinstance(tactic, dict):
                        tactic_messages = tactic.get("messages")
                        if isinstance(tactic_messages, list):
                            messages.extend(tactic_messages)

                for message in messages:
                    if not isinstance(message, dict):
                        continue
                    severity = str(message.get("severity", "")).lower()
                    data = message.get("data")
                    if isinstance(data, dict):
                        data = data.get("message", "")
                    text = str(data).strip() if data is not None else ""

                    if severity in {"info", "information"}:
                        if text:
                            definitions.append(text)
                    elif severity in {"error", "warning"}:
                        if text:
                            errors.append(text)

                return {
                    "ok": True,
                    "definitions": definitions,
                    "errors": errors,
                    "stdout": stdout,
                    "stderr": stderr,
                    "repl_pass": repl_pass,
                    "repl_output": raw_output
                }

            text_output = next((text for text in [raw_output, stdout, stderr] if text and str(text).strip()), "")

            if text_output:
                return {
                    "ok": True,
                    "definitions": [],
                    "errors": [str(text_output).strip()],
                    "stdout": stdout,
                    "stderr": stderr,
                    "repl_pass": repl_pass,
                    "repl_output": raw_output
                }

            return {
                "ok": False,
                "error": "Lean REPL returned no usable output.",
                "stdout": stdout,
                "stderr": stderr,
                "repl_pass": repl_pass,
                "repl_output": raw_output
            }

        except Exception as e:
            logging.error(f"LeanCheckTheoremTool failed: {e}")
            return {"ok": False, "error": str(e)}
        finally:
            if temp_file_path.exists():
                temp_file_path.unlink()
