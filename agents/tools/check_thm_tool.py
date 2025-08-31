# in agents/tools/check_theorem_tool.py

import os
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

            repl_output_str = result.get("repl_output", "{}")
            stdout = result.get("stdout", "")
            stderr = result.get("stderr", "")
            
            # --- EDIT IS HERE: ADDED ROBUST JSON PARSING ---
            try:
                repl_data = json.loads(repl_output_str)
            except json.JSONDecodeError:
                # If parsing fails, return a specific error with the raw output for debugging
                return {
                    "ok": False,
                    "error": f"Failed to parse REPL JSON output. The invalid output was: '{repl_output_str}'",
                    "stdout": stdout,
                    "stderr": stderr
                }
            
            definitions = []
            errors = []

            for message in repl_data.get("messages", []):
                if message.get("severity") == "error":
                    errors.append(message.get("data", "Unknown error"))
                elif message.get("severity") == "info":
                    definitions.append(message.get("data", "Unknown info"))
            
            return {
                "ok": True,
                "definitions": definitions,
                "errors": errors,
                "stdout": stdout,
                "stderr": stderr
            }

        except Exception as e:
            logging.error(f"LeanCheckTheoremTool failed: {e}")
            return {"ok": False, "error": str(e)}
        finally:
            if temp_file_path.exists():
                os.remove(temp_file_path)