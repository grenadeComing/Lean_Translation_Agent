# main.py

import os
import json
import logging
import csv
import collections
import functools
import concurrent.futures
from pathlib import Path
from typing import List, Dict, Any
import numpy as np
from tqdm import tqdm

from agents.runner import call_openai_lean_agent, TOOLS
from agents.tools.base_tool import BaseTool

# This global variable will hold the tools for each worker process
worker_tools = None

def init_worker(embedding_matrix: np.ndarray, meta_data: List[Dict], query_cache: Dict, allowed_root_path: str):
    """
    Initializer for each worker process.
    It now also sets the allowed_root for file operations.
    """
    global worker_tools
    worker_tools = {
        "lean_retrieval": TOOLS["lean_retrieval"],
    }
    retrieval_tool = worker_tools["lean_retrieval"]
    retrieval_tool.embedding_matrix = embedding_matrix
    retrieval_tool.meta_data = meta_data
    retrieval_tool.query_cache = query_cache
    retrieval_tool._data_loaded = True
    
    # Set the allowed root path for this worker process
    BaseTool.allowed_root = allowed_root_path
    
    logging.info(f"Worker process {os.getpid()} initialized successfully.")

def process_entry(entry: Dict[str, Any], output_dir: Path) -> Dict[str, Any]:
    """
    The function executed by each worker process.
    It processes a single entry from the input file.
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
        
        logging.info(f"Finished processing '{name}' with status: {result['status']} in {result['total_steps']} steps.")
        
        return {
            "name": name,
            "status": result["status"],
            "steps": result["total_steps"],
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

def load_retrieval_database(project_root: Path) -> tuple:
    """Load the retrieval database components."""
    logging.info("Loading retrieval database...")
    embedding_matrix = np.load(project_root / "dataset/dataset_herald/embedding/informal_embeddings.npy")
    with open(project_root / "dataset/dataset_herald/embedding/informal_meta.jsonl", "r", encoding="utf-8") as f:
        meta_data = [json.loads(line) for line in f]
    with open(project_root / "dataset/dataset_herald/embedding/query_cache.json", "r", encoding="utf-8") as f:
        query_cache = json.load(f)
    return embedding_matrix, meta_data, query_cache


def print_and_save_stats(stats: List[Dict[str, Any]], output_dir: Path):
    """Saves a simple pass/fail log to a CSV and prints the overall pass rate."""
    if not stats:
        logging.warning("No statistics were generated to save.")
        return

    stats_file = output_dir / "pass_rate_stats.csv"
    with open(stats_file, "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerow(["name", "passed", "steps_k"])
        for s in stats:
            # Change "verified" to "success" here
            passed = (s["status"] == "success")
            writer.writerow([s["name"], passed, s["steps"]])
            
    logging.info(f"Simple pass/fail statistics saved to {stats_file}")

    total_runs = len(stats)
    # And change "verified" to "success" here
    passed_runs = sum(1 for s in stats if s["status"] == "success")
    pass_rate = (passed_runs / total_runs) * 100 if total_runs > 0 else 0

    print("\n" + "="*40)
    print("📊 Final Pass Rate Summary")
    print("="*40)
    print(f"Overall Pass Rate: {passed_runs} / {total_runs} ({pass_rate:.1f}%)")
    print("="*40 + "\n")


def main() -> None:
    """
    Main function to run the Lean translation agent in parallel.
    """
    PROJECT_ROOT = Path(__file__).resolve().parent
    LEAN_OUTPUT_DIR = PROJECT_ROOT / "results"
    INPUT_FILE = PROJECT_ROOT / "dataset/input/proofnet_sampled.jsonl"
    MAX_WORKERS = 6

    LEAN_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    try:
        embedding_matrix, meta_data, query_cache = load_retrieval_database(PROJECT_ROOT)
        logging.info(f"Successfully loaded {len(meta_data)} examples for retrieval.")
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

    worker_func = functools.partial(process_entry, output_dir=LEAN_OUTPUT_DIR)
    all_stats = []
    logging.info(f"Starting parallel processing with up to {MAX_WORKERS} workers...")

    with concurrent.futures.ProcessPoolExecutor(
        max_workers=MAX_WORKERS,
        initializer=init_worker,
        initargs=(embedding_matrix, meta_data, query_cache, str(LEAN_OUTPUT_DIR))
    ) as executor:
        results = executor.map(worker_func, entries)
        for stat in tqdm(results, total=len(entries), desc="Processing entries"):
            if stat:
                all_stats.append(stat)

    print_and_save_stats(all_stats, LEAN_OUTPUT_DIR)

if __name__ == "__main__":
    setup_logging()
    main()