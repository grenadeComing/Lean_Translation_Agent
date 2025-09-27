import json
import logging
from pathlib import Path
from typing import Dict, Any

from .base_tool import BaseTool
from .run_lean_tool import LeanReplTool


class LeanCheckTheoremTool(BaseTool):
    name = "lean_check_theorem"
    description = (
        "Check whether a Lean definition/theorem exists and view its declaration. "
        "Input must be a valid identifier such as 'Nat.Prime' or 'IsCyclic'."
    )
    parameters = {
        "type": "object",
        "properties": {
            "name_to_check": {
                "type": "string",
                "description": "Lean identifier to run through #check"
            }
        },
        "required": ["name_to_check"],
    }

    def __init__(self, repl_tool: LeanReplTool):
        super().__init__()
        if not isinstance(repl_tool, LeanReplTool):
            raise TypeError("repl_tool must be an instance of LeanReplTool")
        self.repl_tool = repl_tool

    def run(self, name_to_check: str, **_kwargs) -> Dict[str, Any]:
        if not name_to_check:
            return {"ok": False, "error": "name_to_check must be a non-empty string"}
        if self.allowed_root is None:
            return {"ok": False, "error": "allowed_root is not set in BaseTool."}

        temp_path = Path(self.allowed_root) / f"check_{name_to_check.replace('.', '_')}.lean"
        lean_code = f"import Mathlib\n\n#check {name_to_check}\n"

        try:
            temp_path.write_text(lean_code, encoding="utf-8")
        except Exception as e:
            logging.exception("Failed to write temporary Lean file")
            return {"ok": False, "error": f"Failed to write temp file: {e}"}

        try:
            repl_result = self.repl_tool.run(path=str(temp_path))
        finally:
            try:
                temp_path.unlink(missing_ok=True)
            except Exception:
                logging.warning("Failed to delete temporary Lean file: %s", temp_path)

        if not repl_result.get("ok"):
            return repl_result

        stdout = repl_result.get("stdout", "")
        stderr = repl_result.get("stderr", "")
        repl_output = repl_result.get("repl_output", "{}")

        definitions: list[str] = []
        errors: list[str] = []

        try:
            obj = json.loads(repl_output)
        except json.JSONDecodeError:
            errors.append("Unable to parse Lean output")
        else:
            for msg in obj.get("messages", []):
                severity = msg.get("severity", "")
                data = msg.get("data", "")
                if severity == "info":
                    definitions.append(data)
                elif severity == "error":
                    errors.append(data)

        return {
            "ok": True,
            "definitions": definitions,
            "errors": errors,
            "stdout": stdout,
            "stderr": stderr,
        }
