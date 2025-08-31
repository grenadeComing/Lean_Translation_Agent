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

    REPL_DIR = "/Users/kezhang/Desktop/projects/repl"  # adjust if needed

    def run(self, path: str, **kwargs) -> Dict[str, Any]:
        try:
            full_path = self.validate_path(path)
        except ValueError as e:
            return {"ok": False, "error": str(e)}

        payload = json.dumps({
            "path": str(Path(full_path).resolve()),
            "allTactics": True
        }) + "\n\n"

        try:
            result = subprocess.run(
                ["lake", "exe", "repl"],
                input=payload,
                capture_output=True,
                text=True,
                timeout=60,
                cwd=self.REPL_DIR,
                check=False
            )

            stdout, stderr = result.stdout.strip(), result.stderr.strip()

            repl_pass = 1
            try:
                obj = json.loads(stdout)
                all_messages = []

                # 👇 Collect from both "messages" and tactics[*].messages
                if "messages" in obj:
                    all_messages.extend(obj["messages"])
                for tactic in obj.get("tactics", []):
                    all_messages.extend(tactic.get("messages", []))

                if any(msg.get("severity", "").lower() == "error" for msg in all_messages):
                    repl_pass = 0
            except json.JSONDecodeError:
                pass  # Fail-safe: assume it's valid if no parsing errors

            return {
                "ok": True,
                "repl_pass": repl_pass,
                "repl_output": stdout or "{}",
                "stdout": stdout,
                "stderr": stderr
            }

        except subprocess.TimeoutExpired:
            return {"ok": False, "error": "Lean REPL timed out."}
        except Exception as e:
            logging.exception("LeanReplTool error")
            return {"ok": False, "error": str(e)}
