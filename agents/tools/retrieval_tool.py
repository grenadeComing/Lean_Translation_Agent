import logging
import numpy as np
from openai import OpenAI
from .base_tool import BaseTool

class LeanRetrieverTool(BaseTool):
    name = "lean_retrieval"
    description = "Retrieves similar natural language/Lean4 example pairs from a vector database."
    parameters = {
        "query": "The natural language statement to search for.",
        "top_k": "(Optional) The number of top examples to retrieve. Defaults to 3, with a maximum of 5."
    }

    def __init__(self):
        super().__init__()
        self._data_loaded = False
        self.embedding_matrix = None
        self.meta_data = None
        self.query_cache = {}
        self.client = OpenAI()

    def load_data(self, embedding_matrix: np.ndarray, meta_data: list):
        """Manually load the vector database (required before calling `run`)."""
        self.embedding_matrix = embedding_matrix
        self.meta_data = meta_data
        self._data_loaded = True
        logging.info(f"Loaded retrieval DB with {len(meta_data)} examples.")

    def _get_embedding(self, text: str) -> np.ndarray:
        if text in self.query_cache:
            return np.array(self.query_cache[text])
        response = self.client.embeddings.create(input=text, model="text-embedding-3-small")
        embedding = response.data[0].embedding
        self.query_cache[text] = embedding
        return np.array(embedding)

    def run(self, query: str, top_k: str = "3", **kwargs) -> dict:
        if not self._data_loaded:
            return {"ok": False, "error": "Retrieval database not loaded."}

        try:
            # Convert top_k safely
            try:
                effective_top_k = min(int(top_k), 5)
            except ValueError:
                effective_top_k = 1

            query_embedding = self._get_embedding(query)
            similarities = np.dot(self.embedding_matrix, query_embedding) / (
                np.linalg.norm(self.embedding_matrix, axis=1) * np.linalg.norm(query_embedding)
            )
            top_indices = np.argsort(similarities)[::-1][:effective_top_k]

            formatted_results = []
            for idx in top_indices:
                raw = self.meta_data[idx]
                if not isinstance(raw, dict):
                    logging.warning("Skipping retrieval example at index %s: not a dict", idx)
                    continue
                nl = (
                    raw.get("nl")
                    or raw.get("informal_statement")
                    or raw.get("informal")
                    or raw.get("natural_language")
                    or ""
                )
                lean = (
                    raw.get("lean")
                    or raw.get("formal_statement")
                    or raw.get("formal")
                    or raw.get("lean4")
                    or ""
                )

                formatted = {
                    "nl": nl,
                    "lean": lean,
                }

                # Preserve commonly useful metadata if present
                if "id" in raw:
                    formatted["id"] = raw["id"]
                if "source" in raw:
                    formatted["source"] = raw["source"]

                formatted_results.append(formatted)

            logging.info(f"Retrieved {len(formatted_results)} examples for query: '{query}'")
            return {"ok": True, "results": formatted_results}

        except Exception as e:
            logging.exception("RetrieverTool exception:")
            return {"ok": False, "error": f"RetrieverTool exception: {str(e)}"}
