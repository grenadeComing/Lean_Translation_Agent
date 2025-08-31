# tools/write_file_tool.py
from .base_tool import BaseTool
import os

class WriteToFileTool(BaseTool):
    name = "lean_write_file"
    description = "Write Lean4 code to a file in the results/ directory."
    parameters = {
        "path": "Relative file path inside results/",
        "content": "The code to write.",
    }

    def run(self, path: str, content: str) -> str:
        safe_path = self.validate_path(path)
        try:
            os.makedirs(os.path.dirname(safe_path), exist_ok=True)
            with open(safe_path, "w", encoding="utf-8") as f:
                f.write(content)
            return f"Wrote file: {path}"
        except Exception as e:
            return f"__ERROR__: Could not write file: {repr(e)}"

