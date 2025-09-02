import os,json,subprocess
from pathlib import Path

REPL_DIR = "/Users/kezhang/Desktop/projects/repl"

def run_repl(file_path):

    payload = json.dumps({
        "path": str(Path(file_path).resolve()),
        "allTactics": True
    }) + "\n\n"

    try:
        result = subprocess.run(
            ["lake", "exe", "repl"],
            input=payload,
            capture_output=True,
            text=True,
            timeout=80,
            cwd=REPL_DIR,
            check=False
        )

        stdout, stderr = result.stdout.strip(), result.stderr.strip()
        out_str = (stdout + "\n" + stderr).lower()

        repl_pass = 1
        if "severity" in out_str and "error" in out_str:
            repl_pass = 0

        return {
            "repl_pass": repl_pass,
            "repl_output": stdout
        }

    except subprocess.TimeoutExpired:
        raise RuntimeError(f"Timeout expired when processing {file_path}")

def main():
    results_dir = Path('results')
    lean_files = list(results_dir.rglob('*.lean'))
    print(f"Found {len(lean_files)} .lean files in '{results_dir}'.")

    pass_list = []
    pass_num = 0

    for lean_file in lean_files:
        result = run_repl(lean_file)
        if result.get("repl_pass"):
            pass_list.append(lean_file.name)
            pass_num += 1

    print(f"Passed {pass_num}/{len(lean_files)} tests.")
    return pass_list

if __name__ == "__main__":
    main()