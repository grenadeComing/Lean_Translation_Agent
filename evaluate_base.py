import pandas as pd
import json
from pathlib import Path

# --- CONFIGURATION ---
# Make sure these paths point to your files.
# This assumes the script is in the parent directory of 'results'.
RESULTS_DIR = Path(__file__).resolve().parent/"outputs"
JSON_FILE = RESULTS_DIR / "sep_3_agent_with_herald_and_write_only_lean_files/repl_results_detailed.json"
CSV_FILE = RESULTS_DIR / "sep_3_agent_with_herald_and_write_only_lean_files/pass_rate_stats.csv"

def main():
    """
    Updates the 'passed' column in a CSV file using results from a JSON file.
    """
    print("🚀 Starting CSV update from JSON results...")

    # --- 1. Load the JSON results file ---
    try:
        with open(JSON_FILE, 'r') as f:
            json_results = json.load(f)
        print(f"✅ Successfully loaded {len(json_results)} results from '{JSON_FILE.name}'")
    except FileNotFoundError:
        print(f"❌ ERROR: JSON file not found at '{JSON_FILE}'")
        return
    except json.JSONDecodeError:
        print(f"❌ ERROR: Could not parse '{JSON_FILE.name}'. The file may be corrupt.")
        return

    # --- 2. Load the target CSV file ---
    try:
        df = pd.read_csv(CSV_FILE)
        print(f"✅ Successfully loaded {len(df)} rows from '{CSV_FILE.name}'")
    except FileNotFoundError:
        print(f"❌ ERROR: CSV file not found at '{CSV_FILE}'")
        return

    print(f"🔍 Columns found in CSV: {df.columns.tolist()}")
    
    csv_filename_column = 'name' 

    if csv_filename_column not in df.columns:
        print(f"\n❌ FATAL ERROR: The required column '{csv_filename_column}' was not found in the CSV.")
        return

    # --- 3. Create a simple dictionary for fast lookups ---
    # ✅ Use .removesuffix('.lean') to match the CSV's 'name' column
    pass_status_map = {result['filename'].removesuffix('.lean'): bool(result['passed']) for result in json_results}

    # --- 4. Update the DataFrame ---
    print(f"📝 Updating '{CSV_FILE.name}' with the results...")
    
    if 'passed' not in df.columns:
        df['passed'] = pd.NA
        
    df['passed'] = df[csv_filename_column].map(pass_status_map).fillna(df['passed'])
    
    # --- 5. Save the updated DataFrame back to the CSV ---
    try:
        df.to_csv(CSV_FILE, index=False)
        print(f"💾 Success! Overwrote '{CSV_FILE.name}' with the updated results.")
    except Exception as e:
        print(f"❌ ERROR: Could not save the updated CSV file. Reason: {e}")
        
    print("\n✨ Process complete.")

if __name__ == "__main__":
    main()