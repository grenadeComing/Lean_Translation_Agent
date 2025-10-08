# Agentic Lean Auformalization - Translator(ALA-Translator v1")

A sophisticated AI-agent for translating natural language mathematical statements into formal Lean4 proofs using OpenAI's model and self-defined tools.

### Project Structure

```
Lean_Translation_Agent/
├── main.py                 # agent entry
├── requirements.txt        # Python dependencies
├── agents/
│   ├── runner.py           # Agent orchestration
│   ├── configs/            # Tool/prompt configurations
│   ├── prompts/            # Prompt files
│   └── tools/              # Tool implementations
│       ├── base_tool.py
│       ├── run_lean_tool.py 
│       └── ... (other tools)
├── dataset/                # Data files
├── results/                # Experiment outputs
│   └── config_<name>_results/
│       ├── lean_output/    # Generated `.lean` files
│       ├── agent_logs/     # JSONL logs per theorem
│       └── translation.log # Aggregated run log
├── all_experiments_csv/    # Final output CSV after evaluate.py
├── judgement.py            # Scores agent outputs
└── outputs/                # Legacy exports of results/logs
```

## Features

- **Automated Translation**: Translates natural language mathematics to Lean4 code
- **Lean4 Validation**: Automatic compilation checking with Lake REPL
- **Comprehensive Logging**: Detailed agent logs for debugging and analysis

## Architecture

### Core Components

1. **Agent Runner** (`agents/runner.py`)
   - Orchestrates the translation process using OpenAI function calling
   - Manages tool execution and iterative refinement
   - Handles logging and error recovery

2. **Tool System** (`agents/tools/`)
   - **Translation Tool**: Interfaces with local Lean4 translation API
   - **Retrieval Tool**: Semantic search over formalization database
   - **Write Tool**: Safe file operations within project boundaries
   - **REPL Tool**: Lean4 compilation and error checking
   - **Theorem check tool**--: Check if a theorem or lemma exists in Mathlib4
   - **Search Tool** --: Seach inside the Mathlib4 github community 

3. **Data Pipeline**
   - Input: Mathematical natural language statements
   - Retrieval DB: Herald dataset with informal-formal pairs
   - Output: Validated Lean4 `.lean` files

## Installation

### Prerequisites

- OpenAI API key
- Lean4 toolkit (lake, Lean4, mathlib4 lib)
- Lean4 [Lean4 REPL](https://github.com/leanprover-community/repl.git) to get feedback
- Using Mathlib as a dependency in the REPL project, ```echo -e '\n[[require]]\nname = "mathlib"\nscope = "leanprover-community"' >> repl/lakefile.toml```
- Local translation API server (optional)

### Setup

1. Clone the repository:
```bash
git clone https://github.com/grenadeComing/Lean_Translation_Agent.git
cd Lean_Translation_Agent
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Configure your OpenAI API key:
```bash
export OPENAI_API_KEY="your-api-key-here"
```
4. Remember to change the config
```bash

## 1. change the translator model serving API,remeber the v1/chat/completions
## in line 50 of 
agents/tools/translator_tool.py

## 2. the repl path, changed it to where you build the repl lake project
agents/tools/run_lean_tool.py
```

## Usage

### Basic Usage

```bash
python main.py
```

By default this reads `dataset/input/sample_best_400.jsonl` (see `main.py`). Outputs are placed in `results/config_default_results/` with two subdirectories:
- `results/config_default_results/lean_output/` – generated `.lean` files
- `results/config_default_results/agent_logs/` – JSONL traces from the agent run
- `results/config_default_results/translation.log` – aggregated run log
- `results/config_default_results/agent_run_summary.csv` – pass/fail metrics for each theorem

To select a different runner configuration, pass its name (or path) as an optional argument. For example:
```bash
python main.py config_custom
```
Outputs for that run will appear under `results/config_config_custom_results/` (mirroring the argument you pass) with the same subdirectory layout. The runner will look for `agents/configs/config_custom.json` (or the exact path you provide) instead of the default configuration when orchestrating the tools.

To score a completed experiment, run:
```bash
python judgement.py config_custom
```
This reads `results/config_config_custom_results/agent_run_summary.csv` and appends validation scores.


### Output

- **Lean4 Files**: Validated proofs in `results/` directory
- **Logs**: Execution details in `results/config_<config>_results/agent_logs/` plus the consolidated `translation.log`
- **Summary**: CSV metrics in `results/config_<config>_results/agent_run_summary.csv`

## Data Format

### Input Format
```json
{
  "name": "theorem_name",
  "nl_statement": "Natural language mathematical statement"
}
```

### Retrieval Database
- **Embeddings**: Pre-computed semantic embeddings
- **Metadata**: Informal-formal statement pairs with explanations
- **Cache**: Query embedding cache for performance



### Adding New Tools

1. Inherit from `BaseTool` in `agents/tools/base_tool.py`
2. Implement `run()` method
3. Add to `TOOLS` dictionary in `agents/runner.py`
4. Update system prompt if needed


## License

MIT License - see LICENSE file for details.

## Citation

If you use this work in your research, please cite:

```bibtex
@software{lean_translation_agent,
  title = {Lean Translation Agent},
  author = {GrenadeComing},
  url = {https://github.com/grenadeComing/Lean_Translation_Agent},
  year = {2025}
}
```

## Acknowledgments

- OpenAI for GPTs API
- Lean community for the formalization framework
- ProofNet and Herald datasets
