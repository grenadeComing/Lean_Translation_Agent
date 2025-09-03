import json
import subprocess
import pandas as pd
from pathlib import Path
import argparse
from typing import Dict, List
from concurrent.futures import ProcessPoolExecutor
from tqdm import tqdm # Import tqdm

# --- CONFIGURATION (as requested) ---
PROJECT_ROOT = Path(__file__).resolve().parent
REPL_DIR = Path("/Users/kezhang/Desktop/projects/repl")
# Define the directory where your .lean proof files are stored
LEAN_FILES_DIR = PROJECT_ROOT / "results"
# Define the path to your CSV file
CSV_FILE = LEAN_FILES_DIR / "pass_rate_stats.csv"

def run_repl(file_path: Path) -> dict:
    """
    Runs the Lean REPL on a single .lean file and checks for errors.
    """
    payload = json.dumps({
        "path": str(file_path.resolve()),
        "allTactics": True
    }) + "\n\n"
    
    try:
        # Execute the Lean REPL as a subprocess
        result = subprocess.run(
            ["lake", "exe", "repl"],
            input=payload,
            capture_output=True,
            text=True,
            timeout=80,  # 80-second timeout to prevent hangs
            cwd=REPL_DIR, # Uses the hardcoded global REPL_DIR
            check=False
        )
        
        stdout, stderr = result.stdout.strip(), result.stderr.strip()
        
        # Combine output and check for errors
        full_output = (stdout + "\n" + stderr).lower()
        repl_pass = 1
        
        if "severity" in full_output and "error" in full_output:
            repl_pass = 0
            
        return {
            "filename": file_path.name,
            "passed": repl_pass,
            "output": stdout,
            "stderr": stderr
        }
        
    except subprocess.TimeoutExpired:
        # Note: Printing from worker processes can sometimes jumble output with the progress bar.
        # The returned dictionary is the most reliable way to track errors.
        return {
            "filename": file_path.name,
            "passed": 0,
            "error": "TimeoutExpired",
            "output": "",
            "stderr": ""
        }
    except Exception as e:
        return {
            "filename": file_path.name,
            "passed": 0,
            "error": str(e),
            "output": "",
            "stderr": ""
        }

def update_csv_with_results(df: pd.DataFrame, repl_results: List[Dict]) -> pd.DataFrame:
    """
    Updates the DataFrame with REPL results using efficient mapping.
    """
    if 'filename' not in df.columns:
        print("⚠️  'filename' column not found in CSV. Cannot update results.")
        return df

    results_map = {result['filename']: result['passed'] == 1 for result in repl_results}
    
    if 'passed' not in df.columns:
        df['passed'] = False
    
    df['passed'] = df['filename'].map(results_map).fillna(df['passed'])
    return df

def main(dry_run=False):
    """
    Main execution script.
    """
    print("🚀 Starting Lean REPL validation process...")
    
    # --- 1. Load Data and Find Files ---
    try:
        df = pd.read_csv(CSV_FILE)
        print(f"📊 Loaded CSV with {len(df)} rows")
    except FileNotFoundError:
        raise SystemExit(f"❌ ERROR: The CSV file was not found at: {CSV_FILE}")
    
    all_lean_files = list(LEAN_FILES_DIR.glob("*.lean"))
    total_files = len(all_lean_files)
    print(f"📁 Found {total_files} .lean files to process")
    
    if not all_lean_files:
        return
    
    # --- 2. Run REPL on all files in parallel ---
    repl_results = []
    
    if dry_run:
        print("🔄 DRY RUN: Skipping parallel execution.")
        for lean_file in all_lean_files:
            repl_results.append({"filename": lean_file.name, "passed": 1})
    else:
        with ProcessPoolExecutor() as executor:
            # ✅ Wrap the executor.map call with tqdm to create a progress bar
            results_iterator = executor.map(run_repl, all_lean_files)
            for result in tqdm(results_iterator, total=total_files, desc="Processing Lean Files"):
                repl_results.append(result)

    # --- 3. Update CSV and Save Results ---
    print("\n📝 Updating CSV with collected results...")
    
    updated_df = update_csv_with_results(df, repl_results)
    
    # Calculate final numbers
    passed_count = sum(1 for result in repl_results if result.get('passed') == 1)
    failed_count = total_files - passed_count
    pass_rate = (passed_count / total_files * 100) if total_files > 0 else 0
    
    print(f"\n📊 REPL Validation Results:")
    print(f"    Total files processed: {total_files}")
    print(f"    Passed: {passed_count}")
    print(f"    Failed: {failed_count}")
    print(f"    Pass rate: {pass_rate:.1f}%")
    
    if not dry_run:
        updated_df.to_csv(CSV_FILE, index=False)
        print(f"💾 Updated CSV saved to: {CSV_FILE}")
        
        results_file = LEAN_FILES_DIR / "repl_results_detailed.json"
        with open(results_file, 'w') as f:
            json.dump(repl_results, f, indent=2)
        print(f"📄 Detailed results saved to: {results_file}")
    else:
        print("🔄 DRY RUN: No files were modified.")
    
    print("\n✨ Process completed successfully!")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run Lean REPL validation in parallel on .lean files and update a CSV.")
    parser.add_argument("--dry-run", action="store_true", 
                       help="Perform a dry run without executing REPL or modifying files.")
    args = parser.parse_args()
    
    try:
        main(dry_run=args.dry_run)
    except KeyboardInterrupt:
        print("\n⚠️  Process interrupted by user")
    except Exception as e:
        print(f"\n❌ An unexpected error occurred: {e}")
        raise