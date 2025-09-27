import os
import requests
from .base_tool import BaseTool


class SearchOnlineTool(BaseTool):
    name = "search_online"
    description = (
        "Search Lean4-related code on GitHub. "
        "Uses the GitHub code search API scoped to leanprover-community/mathlib4 and leanprover/lean4."
    )
    parameters = {
        "query": "Search query related to Lean4 code or concepts"
    }

    SEARCH_URL = "https://api.github.com/search/code"

    def __init__(self):
        token = os.getenv("GITHUB_TOKEN")
        self._session = requests.Session()
        self._session.headers["Accept"] = "application/vnd.github.text-match+json"
        if token:
            self._session.headers["Authorization"] = f"Bearer {token}"

    def _github_code_search(self, payload: dict, source: str) -> list[dict]:
        resp = self._session.get(self.SEARCH_URL, params=payload, timeout=10)

        if resp.status_code == 403:
            raise RuntimeError("GitHub rate limit exceeded; add a GITHUB_TOKEN.")
        if resp.status_code != 200:
            raise RuntimeError(f"GitHub error {resp.status_code}: {resp.text}")

        results: list[dict] = []
        data = resp.json()
        for item in data.get("items", [])[:5]:
            repo = item.get("repository", {})
            matches = item.get("text_matches", [])
            snippet = matches[0].get("fragment", "") if matches else ""
            results.append({
                "name": item.get("name"),
                "path": item.get("path"),
                "repo": repo.get("full_name"),
                "url": item.get("html_url"),
                "snippet": snippet,
                "source": source,
            })
        return results

    def run(self, query: str) -> dict:
        try:
            primary_payload = {
                "q": (
                    f"{query} "
                    "repo:leanprover-community/mathlib4 "
                    "repo:leanprover/lean4 "
                    "language:Lean"
                ),
                "per_page": 5,
            }

            try:
                results = self._github_code_search(primary_payload, source="mathlib4")
            except RuntimeError as err:
                return {"ok": False, "error": str(err)}

            if not results:
                broadened_payload = {
                    "q": f"{query} language:Lean",
                    "per_page": 5,
                }
                try:
                    results = self._github_code_search(broadened_payload, source="github-wide")
                except RuntimeError as err:
                    return {"ok": False, "error": str(err)}

            if not results:
                results = [{
                    "name": "No exact matches",
                    "path": "",
                    "repo": "",
                    "url": "https://leanprover-community.github.io/mathlib4_docs/",
                    "snippet": "No matching snippets found on GitHub; consider broadening the query or checking mathlib4 docs.",
                    "source": "fallback",
                }]

            return {"ok": True, "results": results}

        except Exception as e:
            return {"ok": False, "error": f"SearchOnlineTool exception: {e}"}
