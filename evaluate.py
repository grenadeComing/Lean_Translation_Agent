import os
import json
import subprocess
import pandas as pd
from pathlib import Path
import argparse # Import the argparse library

# --- CONFIGURATION ---
# Define the root directory of your Lean project
PROJECT_ROOT = Path(__file__).resolve().parent
REPL_DIR = Path("/Users/kezhang/Desktop/projects/repl") 
# Define the directory where your .lean proof files are stored
LEAN_FILES_DIR = PROJECT_ROOT / "results"
# Define the path to your CSV file
CSV_FILE = LEAN_FILES_DIR / "pass_rate_stats.csv" # Replace with your CSV file path

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
            timeout=80, # 80-second timeout to prevent hangs
            cwd=REPL_DIR,
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
            "output": stdout
        }
    except subprocess.TimeoutExpired:
        print(f"⏰ Timeout expired when processing {file_path.name}")
        return {
            "filename": file_path.name,
            "passed": 0,
            "error": "TimeoutExpired"
        }
    except Exception as e:
        return {
            "filename": file_path.name,
            "passed": 0,
            "error": str(e)
        }

def validate_file_correspondence(lean_files: list[Path], csv_df: pd.DataFrame):
    """
    Checks for a one-to-one match between .lean files in the directory
    and non-'N/A' names in the CSV.
    """
    print("STEP 1: Validating file correspondence...")
    
    lean_filenames = {f.stem for f in lean_files}
    
    # Filter out N/A entries - check both name and status columns for robustness
    valid_entries = csv_df[
        (csv_df['name'] != 'N/A') & 
        (csv_df['name'].notna()) & 
        (csv_df['status'] != 'N/A') &
        (csv_df['status'].notna())
    ]
    csv_names = set(valid_entries['name'])
    
    missing_in_csv = lean_filenames - csv_names
    missing_in_dir = csv_names - lean_filenames
    
    has_errors = False
    if missing_in_csv:
        print(f"\n❌ ERROR: Found {len(missing_in_csv)} .lean file(s) that are NOT in the CSV:")
        print(f"   -> {sorted(list(missing_in_csv))}")
        has_errors = True
        
    if missing_in_dir:
        print(f"\n❌ ERROR: Found {len(missing_in_dir)} CSV name(s) without a matching .lean file:")
        print(f"   -> {sorted(list(missing_in_dir))}")
        has_errors = True
    
    if has_errors:
        raise SystemExit("\nCritical error: Mismatch found. Please fix the files or CSV and run again.")
    
    print(f"✅ Success! All {len(lean_filenames)} files correspond perfectly with CSV entries.")

def main(dry_run=False):
    """
    Main execution script.
    """
    # --- 1. Load Data and Validate Correspondence ---
    if not LEAN_FILES_DIR.exists():
        raise SystemExit(f"❌ ERROR: The specified directory for .lean files does not exist: {LEAN_FILES_DIR}")

    try:
        df = pd.read_csv(CSV_FILE)
    except FileNotFoundError:
        raise SystemExit(f"❌ ERROR: The CSV file was not found at: {CSV_FILE}")

    all_lean_files = list(LEAN_FILES_DIR.glob("*.lean"))
    print(f"🔍 Found {len(all_lean_files)} .lean files in {LEAN_FILES_DIR}")
    validate_file_correspondence(all_lean_files, df)
    
    # --- 2. Filter for Files to Re-evaluate ---
    print("\nSTEP 2: Filtering for proofs that need re-evaluation...")
    
    if 'status' not in df.columns:
        raise SystemExit("❌ ERROR: CSV is missing the required 'status' column.")
    if 'passed' not in df.columns:
        df['passed'] = 0

    # Debug: Show what status values exist
    print("📊 Current status distribution:")
    status_counts = df['status'].value_counts()
    for status, count in status_counts.items():
        print(f"   - {status}: {count} entries")
    
    # Look for different possible status names for max steps reached
    possible_max_step_statuses = [
        'max_step_reached',
        'max_steps_reached', 
        'timeout',
        'step_limit_exceeded',
        'maximum_steps_reached'
    ]
    
    found_status = None
    for status_name in possible_max_step_statuses:
        if status_name in status_counts:
            found_status = status_name
            break
    
    if found_status:
        print(f"🎯 Found '{found_status}' status - using this for re-evaluation")
        to_reevaluate_df = df[df['status'] == found_status].copy()
    else:
        # If none of the common names found, ask user to specify
        print("🤔 No common max-steps status found. Available statuses:")
        for status in status_counts.index:
            if status != 'N/A' and status != 'success':
                print(f"   - {status}")
        
        # For now, let's just look for anything that's not success or N/A and has passed=0
        potential_retries = df[
            (df['status'] != 'success') & 
            (df['status'] != 'N/A') & 
            (df['passed'] == 0)
        ].copy()
        
        if not potential_retries.empty:
            print(f"🔄 Found {len(potential_retries)} entries that might benefit from retry (not success, not N/A, passed=0)")
            print("   Status breakdown of retry candidates:")
            for status, count in potential_retries['status'].value_counts().items():
                print(f"     - {status}: {count} entries")
            
            to_reevaluate_df = potential_retries
        else:
            to_reevaluate_df = pd.DataFrame()  # Empty dataframe
    
    if to_reevaluate_df.empty:
        print("👍 No proofs found that need re-evaluation.")
        return

    files_to_process = [LEAN_FILES_DIR / f"{name}.lean" for name in to_reevaluate_df['name']]
    print(f"\n🔄 Found {len(files_to_process)} proofs to re-evaluate")

    # If dry_run is true, print the plan and exit.
    if dry_run:
        print("\n--- DRY RUN MODE ---")
        print("✅ Dry run enabled. No external commands will be run and no files will be modified.")
        print("\nThe following files WOULD be processed:")
        for file_path in files_to_process:
            name = file_path.stem
            current_status = to_reevaluate_df[to_reevaluate_df['name'] == name]['status'].iloc[0]
            print(f"  - {file_path.name} (current status: {current_status})")
        return # Exit the function before any processing or file writing

    original_statuses = dict(zip(to_reevaluate_df['name'], to_reevaluate_df['passed']))

    # --- 3. Run Re-evaluation Sequentially ---
    print("\nSTEP 3: Running Lean REPL on filtered files (sequentially)...")
    
    results = {}
    total_count = len(files_to_process)
    
    for i, file_path in enumerate(files_to_process, 1):
        result = run_repl(file_path)
        filename_stem = Path(result['filename']).stem
        results[filename_stem] = result.get('passed', 0)
        
        status = 'PASS' if results[filename_stem] == 1 else 'FAIL'
        print(f"[{i}/{total_count}] {result['filename']}: {status}")

    # --- 4. Update and Save CSV ---
    print("\nSTEP 4: Updating CSV with new results...")
    
    df.set_index('name', inplace=True)
    results_series = pd.Series(results, name='passed')
    df.update(results_series)
    df.reset_index(inplace=True)
    
    df.to_csv(CSV_FILE, index=False)
    print(f"✅ CSV file '{CSV_FILE}' has been updated.")

    # --- 5. Generate Detailed Summary ---
    print("\n🎉 Re-evaluation complete!")

    proofs_flipped_to_pass = 0
    flipped_proof_names = []
    
    for name, new_status in results.items():
        original_status = original_statuses.get(name)
        if original_status == 0 and new_status == 1:
            proofs_flipped_to_pass += 1
            flipped_proof_names.append(name)
            
    pass_count = sum(results.values())
    print(f"Summary: {pass_count} / {total_count} re-evaluated proofs now have a 'passed' status of 1.")
    
    if proofs_flipped_to_pass > 0:
        print(f"✨ **{proofs_flipped_to_pass}** proof(s) successfully changed status from FAIL (0) to PASS (1).")
        print("   Changed proofs:")
        for proof_name in flipped_proof_names:
            print(f"     - {proof_name}")
    else:
        print("No proofs changed their status from FAIL to PASS.")


if __name__ == "__main__":
    # Set up the command-line argument parser.
    parser = argparse.ArgumentParser(description="Re-evaluate Lean proofs that might benefit from retry.")
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Simulate the script's actions without running Lean or modifying the CSV file."
    )
    args = parser.parse_args()

    # Pass the dry_run flag to the main function.
    main(dry_run=args.dry_run)