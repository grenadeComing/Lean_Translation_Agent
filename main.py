# main.py

import os
import json
import logging
import csv
import functools
from pathlib import Path
from typing import List, Dict, Any
import numpy as np
from tqdm import tqdm
import concurrent.futures

from agents.runner import call_openai_lean_agent, TOOLS
from agents.tools.base_tool import BaseTool


def process_entry(entry: Dict[str, Any], output_dir: Path) -> Dict[str, Any]:
    """
    Process a single entry from the input file.
    Uses globally loaded retrieval database.
    """
    name = entry["name"].replace("|", "_")
    nl = entry["nl_statement"]
    output_path = output_dir / f"{name}.lean"

    try:
        logging.info(f"Processing: {name}")
        result = call_openai_lean_agent(
            file_path=str(output_path),
            natural_language_statement=nl
        )
        
        logging.info(f"Finished processing '{name}' with status: {result['status']} in {result['step']} steps.")
        
        return {
            "name": name,
            "status": result["status"],
            "steps": result["step"],
            "log_path": result["log_path"]
        }
    except Exception as e:
        logging.error(f"A critical error occurred while processing {name}: {e}")
        return {
            "name": name, "status": "crashed", "steps": 0, "log_path": "N/A"
        }

def setup_logging() -> None:
    """Configure logging with the default 'INFO' level."""
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)s - %(message)s',
        handlers=[
            logging.FileHandler('translation_agent.log'),
            logging.StreamHandler()
        ]
    )

# Global retrieval database - loaded once and shared by all threads
EMBEDDING_MATRIX = None
META_DATA = None
QUERY_CACHE = None

def load_retrieval_database_globally(project_root: Path) -> None:
    """Load the retrieval database components globally."""
    global EMBEDDING_MATRIX, META_DATA, QUERY_CACHE
    
    logging.info("Loading retrieval database...")
    EMBEDDING_MATRIX = np.load(project_root / "dataset/dataset_herald/embedding/informal_embeddings.npy")
    with open(project_root / "dataset/dataset_herald/embedding/informal_meta.jsonl", "r", encoding="utf-8") as f:
        META_DATA = [json.loads(line) for line in f]
    with open(project_root / "dataset/dataset_herald/embedding/query_cache.json", "r", encoding="utf-8") as f:
        QUERY_CACHE = json.load(f)
    
    # Initialize the tool once with the loaded data
    if "lean_retrieval" in TOOLS:
        retrieval_tool = TOOLS["lean_retrieval"]
        retrieval_tool.embedding_matrix = EMBEDDING_MATRIX
        retrieval_tool.meta_data = META_DATA
        retrieval_tool.query_cache = QUERY_CACHE
        retrieval_tool._data_loaded = True
    
    logging.info(f"Successfully loaded {len(META_DATA)} examples for retrieval.")


def print_and_save_stats(stats: List[Dict[str, Any]], output_dir: Path):
    """Saves a simple pass/fail log to a CSV and prints the overall pass rate."""
    if not stats:
        logging.warning("No statistics were generated to save.")
        return

    # Debug: Print all unique statuses to see what we're getting
    unique_statuses = set(s["status"] for s in stats)
    print(f"DEBUG: Found these statuses: {unique_statuses}")

    stats_file = output_dir / "pass_rate_stats.csv"
    with open(stats_file, "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerow(["name", "status", "passed", "steps"])
        for s in stats:
            passed = (s["status"] == "success")
            writer.writerow([s["name"], s["status"], passed, s["steps"]])
            
    logging.info(f"Simple pass/fail statistics saved to {stats_file}")

    total_runs = len(stats)
    passed_runs = sum(1 for s in stats if s["status"] == "success")
    
    # Debug: Show breakdown by status
    status_counts = {}
    for s in stats:
        status = s["status"]
        status_counts[status] = status_counts.get(status, 0) + 1
    
    print(f"DEBUG: Status breakdown: {status_counts}")
    
    pass_rate = (passed_runs / total_runs) * 100 if total_runs > 0 else 0

    print("\n" + "="*40)
    print("📊 Final Pass Rate Summary")
    print("="*40)
    print(f"Overall Pass Rate: {passed_runs} / {total_runs} ({pass_rate:.1f}%)")
    for status, count in status_counts.items():
        print(f"  {status}: {count}")
    print("="*40 + "\n")


def main() -> None:
    """
    Main function to run the Lean translation agent in parallel using threads.
    """
    PROJECT_ROOT = Path(__file__).resolve().parent
    LEAN_OUTPUT_DIR = PROJECT_ROOT / "results"
    INPUT_FILE = PROJECT_ROOT / "dataset/input/proofnet_sampled.jsonl"
    #INPUT_FILE = PROJECT_ROOT / "dataset/input/test.jsonl"
    MAX_WORKERS = 10 # Higher for I/O bound threads

    LEAN_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    # Set the allowed root path for all tools
    BaseTool.allowed_root = str(LEAN_OUTPUT_DIR)
    logging.info(f"Set allowed_root to: {LEAN_OUTPUT_DIR}")

    try:
        load_retrieval_database_globally(PROJECT_ROOT)
    except Exception as e:
        logging.error(f"Failed to load retrieval database: {e}")
        raise

    logging.info(f"Loading input data from {INPUT_FILE}...")
    try:
        with open(INPUT_FILE, "r", encoding="utf-8") as f:
            entries = [json.loads(line) for line in f]
        logging.info(f"Loaded {len(entries)} entries to process.")
    except Exception as e:
        logging.error(f"Failed to load input data: {e}")
        raise

    # No need for functools.partial anymore
    all_stats = []
    logging.info(f"Starting parallel processing with up to {MAX_WORKERS} threads...")

    # Use ThreadPoolExecutor instead of ProcessPoolExecutor
    with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
        # Submit all jobs directly
        future_to_entry = {
            executor.submit(process_entry, entry, LEAN_OUTPUT_DIR): entry 
            for entry in entries
        }
        
        # Process completed results as they finish
        with tqdm(total=len(entries), desc="Processing entries") as pbar:
            for future in concurrent.futures.as_completed(future_to_entry):
                try:
                    stat = future.result()
                    if stat:
                        all_stats.append(stat)
                        # Update progress bar with current status
                        pbar.set_postfix({"Status": stat["status"], "Name": stat["name"][:20]})
                except Exception as e:
                    entry = future_to_entry[future]
                    logging.error(f"Error processing {entry.get('name', 'unknown')}: {e}")
                finally:
                    pbar.update(1)

    print_and_save_stats(all_stats, LEAN_OUTPUT_DIR)

if __name__ == "__main__":
    setup_logging()
    main()