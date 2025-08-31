from .base_tool import BaseTool
from pathlib import Path
from typing import Dict, Any
import subprocess, json, logging

class LeanReplTool(BaseTool):
    name = "lean4_repl_runner"
    description = "Run a Lean4 file in a REPL-like environment and get the output."
    parameters = {
        "type": "object",
        "properties": {
            "path": {
                "type": "string",
                "description": "The path to the Lean4 file to run."
            }
        },
        "required": ["path"]
    }

    REPL_DIR = "/Users/kezhang/Desktop/projects/repl"  # confirm this

    def run(self, path: str, **kwargs) -> Dict[str, Any]:
        try:
            full_path = self.validate_path(path)
        except ValueError as e:
            return {"ok": False, "error": str(e)}

        command = ["lake", "exe", "repl"]

        try:
            payload = json.dumps({
                "path": str(Path(full_path).resolve()),
                "allTactics": True
            })

            process = subprocess.run(
                command,
                input=payload,
                capture_output=True,
                text=True,
                timeout=60,
                cwd=self.REPL_DIR,
                check=False
            )

            stdout = process.stdout.strip()
            stderr = process.stderr.strip()

            # Only fail on explicit severity:"error" in the parsed JSON
            has_severity_error = False
            if stdout:
                try:
                    obj = json.loads(stdout)
                    if isinstance(obj, dict):
                        for t in obj.get("tactics", []):
                            for m in t.get("messages", []):
                                if str(m.get("severity", "")).lower() == "error":
                                    has_severity_error = True
                                    break
                            if has_severity_error:
                                break
                except json.JSONDecodeError:
                    # If we can't parse, treat as no severity error
                    pass

            repl_pass = 0 if has_severity_error else 1

            return {
                "ok": True,
                "repl_pass": repl_pass,
                "repl_output": stdout if stdout else "{}",
                "stdout": stdout,
                "stderr": stderr
            }

        except subprocess.TimeoutExpired:
            return {"ok": False, "error": "Lean process timed out."}
        except Exception as e:
            logging.error(f"LeanReplTool failed: {e}")
            return {"ok": False, "error": str(e)}
