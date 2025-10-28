# main.py
import argparse
import json
import logging
import csv
from pathlib import Path
import time
from typing import List, Dict, Any
import numpy as np
from tqdm import tqdm
import concurrent.futures

from agents.runner import call_openai_lean_agent, TOOLS
from agents.tools.base_tool import BaseTool


def process_entry(
    entry: Dict[str, Any],
    lean_output_dir: Path,
    agent_log_dir: Path,
    config_name: str
) -> Dict[str, Any]:
    """
    Process a single entry from the input file.
    Uses globally loaded retrieval database.
    """
    name = entry["name"].replace("|", "_")
    nl = entry["nl_statement"]
    output_path = lean_output_dir / f"{name}.lean"
    domain = entry.get("domain")

    try:
        logging.info(f"Processing: {name}")
        result = call_openai_lean_agent(
            file_path=str(output_path),
            natural_language_statement=nl,
            config=config_name,
            log_dir=str(agent_log_dir)
        )
        
        logging.info(f"Finished processing '{name}' with status: {result['status']} in {result['step']} steps.")

        lean4_code = ""

        try:
            if output_path.exists():
                with open(output_path, "r", encoding="utf-8") as f:
                    lean4_code = f.read()

                # successful processing
                return {
                    "name": name,
                    "domain": domain,
                    "status": result["status"],
                    "steps": result["step"],
                    "nl_statement": nl,
                    "lean4_code": lean4_code
                }

            else:
                logging.warning(f"Output file {output_path} does not exist.")
                # output file not found
                return {
                    "name": name,
                    "domain": domain,
                    "status": "N/A",
                    "steps": 0,
                    "nl_statement": nl,
                    "lean4_code": "Lean4 code file not found"
                }
        except Exception:
            logging.error(f"Error reading output file {output_path}.")
            # output file read error
            return {
                "name": name,
                "domain": domain,
                "status": "NA",
                "steps": "NA",
                "nl_statement": nl,
                "lean4_code": "Error reading Lean4 code"
            }

    # agent error exception handling
    except Exception as e:
        logging.error(f"Agent loading error when processing {name}: {e}")
        return {
            "name": name,
            "domain": domain,
            "status": "agent_crashed",
            "steps": 0,
            "nl_statement": nl,
            "lean4_code": ""
        }

def setup_logging(log_path: Path) -> None:
    """Configure logging with the default 'INFO' level."""
    log_path.parent.mkdir(parents=True, exist_ok=True)
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)s - %(message)s',
        handlers=[
            logging.FileHandler(log_path, mode="a", encoding="utf-8"),
            logging.StreamHandler()
        ],
        force=True
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

def print_final_summary(status_counts: Dict[str, int], total_processed: int):
    """Print the final summary statistics without needing the full stats list."""
    if total_processed == 0:
        logging.warning("No entries were processed successfully.")
        return
    
    passed_runs = status_counts.get("success", 0)
    pass_rate = (passed_runs / total_processed) * 100 if total_processed > 0 else 0

    print("\n" + "="*40)
    print("📊 Final Pass Rate Summary")
    print("="*40)
    print(f"Overall Pass Rate: {passed_runs} / {total_processed} ({pass_rate:.1f}%)")
    for status, count in status_counts.items():
        print(f"  {status}: {count}")
    print("=" * 40 + "\n")

def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Run the Lean translation agent over the configured dataset."
    )
    parser.add_argument(
        "config",
        nargs="?",
        default="default",
        help="Name or path of the runner config to use (default: %(default)s).",
    )
    return parser.parse_args()


def main(config_name: str = "default") -> None:
    """
    Main function to run the Lean translation agent in parallel using threads.
    """
    PROJECT_ROOT = Path(__file__).resolve().parent
    RESULTS_ROOT = PROJECT_ROOT / "results"
    RESULTS_ROOT.mkdir(parents=True, exist_ok=True)

    config_label = Path(config_name).stem or config_name
    config_results_dir = RESULTS_ROOT / f"config_{config_label}_results"
    lean_output_dir = config_results_dir / "lean_output"
    agent_log_dir = config_results_dir / "agent_logs"
    for directory in (lean_output_dir, agent_log_dir):
        directory.mkdir(parents=True, exist_ok=True)

    setup_logging(config_results_dir / "translation.log")

    # The input file
    INPUT_FILE = PROJECT_ROOT / "dataset/input/test.jsonl"
    MAX_WORKERS = 10 # Higher for I/O bound threads

    # Set the allowed root path for all tools
    BaseTool.allowed_root = str(lean_output_dir)
    logging.info(f"Set allowed_root to: {lean_output_dir}")

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

    # Create a CSV file and write the headers
    stats_file = config_results_dir / "agent_run_summary.csv"
    csv_file = open(stats_file, "w", newline="", encoding="utf-8")
    csv_writer = csv.writer(csv_file)
    csv_writer.writerow(["name", "domain", "status", "passed", "steps", "nl_statement", "lean4_code"])
    csv_file.flush()  # Ensure header is written immediately
    
    # Counters for final statistics
    status_counts = {}
    total_processed = 0
    
    logging.info(f"Starting parallel processing with up to {MAX_WORKERS} threads...")
    time_start = time.perf_counter()
    try:
        # Use ThreadPoolExecutor instead of ProcessPoolExecutor
        with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
            # Submit all jobs directly
            future_to_entry = {
                executor.submit(process_entry, entry, lean_output_dir, agent_log_dir, config_name): entry 
                for entry in entries
            }
            
            # Process completed results as they finish
            with tqdm(total=len(entries), desc="Processing entries") as pbar:
                for future in concurrent.futures.as_completed(future_to_entry):
                    try:
                        stat = future.result()
                        if stat:
                            # Write immediately to CSV
                            passed = (stat["status"] == "success")
                            csv_writer.writerow([
                                stat["name"], 
                                stat["domain"], 
                                stat["status"], 
                                passed, 
                                stat["steps"], 
                                stat["nl_statement"], 
                                stat["lean4_code"]
                            ])
                            csv_file.flush()  # Ensure data is written to disk
                            
                            # Update counters for final summary
                            status_counts[stat["status"]] = status_counts.get(stat["status"], 0) + 1
                            total_processed += 1
                            
                            # Update progress bar with current status
                            pbar.set_postfix({"Status": stat["status"], "Name": stat["name"][:20]})
                    except Exception as e:
                        entry = future_to_entry[future]
                        logging.error(f"Error processing {entry.get('name', 'unknown')}: {e}")
                    finally:
                        pbar.update(1)
    
    finally:
        # Always close the CSV file
        csv_file.close()


    time_end = time.perf_counter()
    # Print final statistics using the counters
    print_final_summary(status_counts, total_processed)
    print(f"Total processing time: {time_end - time_start:.2f} seconds")

if __name__ == "__main__":
    args = parse_args()
    main(args.config)
