import requests
import os  # Import the 'os' module to access environment variables
from .base_tool import BaseTool

class SearchOnlineTool(BaseTool):
    name = "search_online"
    description = (
        "Search the web for Lean4-related code or documentation. "
        "Use this tool when additional context from Lean4 GitHub repos is needed."
        "Search under https://github.com/leanprover-community/mathlib4"
    )
    parameters = {
        "query": "Search query related to Lean4 code or concepts"
    }

    SERPER_URL = "https://google.serper.dev/search"

    # --- ADD THIS __init__ METHOD ---
    def __init__(self):
        """
        Initializes the tool and loads the Serper API key from environment variables.
        """
        # Load the API key from an environment variable named SERPER_API_KEY
        self.SERPER_API_KEY = os.getenv("SERPER_API_KEY")
        if not self.SERPER_API_KEY:
            raise ValueError("SERPER_API_KEY environment variable not set. Please get a key from https://serper.dev")
    # --------------------------------

    def run(self, query: str) -> dict:
        try:
            # Instruct Google to restrict to Lean4 GitHub context
            restricted_query = f"{query} site:github.com/leanprover/lean4 OR site:github.com/leanprover-community"

            headers = {
                "X-API-KEY": self.SERPER_API_KEY,  # This will now work correctly
                "Content-Type": "application/json"
            }

            payload = {
                "q": restricted_query,
                "num": 5
            }

            resp = requests.post(self.SERPER_URL, headers=headers, json=payload)

            if resp.status_code != 200:
                return {
                    "ok": False,
                    "error": f"Serper API error {resp.status_code}: {resp.text}"
                }

            data = resp.json()
            results = data.get("organic", [])[:5]

            filtered_results = [
                {
                    "title": item.get("title"),
                    "link": item.get("link"),
                    "snippet": item.get("snippet")
                }
                for item in results
            ]

            return {
                "ok": True,
                "results": filtered_results
            }

        except Exception as e:
            return {
                "ok": False,
                "error": f"SearchOnlineTool exception: {e}"
            }