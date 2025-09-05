# Lean Translation Agent

A sophisticated AI-powered system for translating natural language mathematical statements into formal Lean4 proofs using OpenAI's GPT-4 and retrieval-augmented generation.

### Project Structure

```
Lean_Translation_Agent/
├── main.py                 # Entry point with data loading
├── requirements.txt       # Python dependencies
├── agents/
│   ├── runner.py         # Agent orchestration
│   └── tools/            # Tool implementations
├── dataset/               # Data files
├── results/               # Output directory
└── agent_logs/          # Execution logs, moved into outputs
├── outputs/             # cut and paste the results folder and agent_logs folder and renaming
├── all_experiments_csv/  # the final output CSV after evaluate.py
├── judgement.py       # input the agent output, asking judgment to give score of the agent work
├── evaludate.py       # re-check the max_reached, fix false negative
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

3. **Data Pipeline**
   - Input: Mathematical problems from ProofNet dataset
   - Retrieval DB: Herald dataset with informal-formal pairs
   - Output: Validated Lean4 `.lean` files

### Workflow

1. Load mathematical statement
2. Generate initial Lean4 translation
3. Validate with Lean REPL
4. Retrieve similar examples if needed
5. Iteratively refine until compilation succeeds
6. Save validated proof to file

## Installation

### Prerequisites

- Python 3.8+
- OpenAI API key
- Lean4 environment with Lake ([Lean4 REPL](https://github.com/leanprover-community/repl.git) to run the evaliation results.))
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
export SERPER_API_KEY="your-google-serper-api-in-order-to-search"
```
4. Remember to change the config
```bash
## 1. for line 50 of 
agents/tools/translator_tool.py ##remeber the v1/chat/completions

## 2. the repl path, changed it to where you build the repl lake project
agents/tools/run_lean_tool.py
```

## Usage

### Basic Usage

```bash
python main.py
```

This will process all entries in `dataset/input/proofnet_sampled.jsonl` and save results to `results/`.

### Configuration

Edit `config.ini` to customize:
- Input/output paths
- Model parameters
- API endpoints
- Logging levels

### Output

- **Lean4 Files**: Validated proofs in `results/` directory
- **Logs**: Execution details in `.agent_logs/` and `translation_agent.log`
- **Progress**: Real-time progress bars and status messages

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

### Testing

```bash
# Run with sample data
python main.py

# Check logs for debugging
tail -f translation_agent.log
```


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

- OpenAI for GPT-4 API
- Lean community for the formalization framework
- ProofNet and Herald datasets for training data
