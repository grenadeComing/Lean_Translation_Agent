import sys
from pathlib import Path
from unittest.mock import MagicMock, patch


ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from agents.tools.translator_tool import LeanTranslationTool


def _mock_response(content: str = "example response"):
    mock_resp = MagicMock()
    mock_resp.status_code = 200
    mock_resp.json.return_value = {"choices": [{"message": {"content": content}}]}
    return mock_resp


def test_run_includes_statement_and_examples():
    tool = LeanTranslationTool(api_url="https://example.com/api")
    history = [
        {"role": "system", "content": "You are a Lean assistant."},
    ]
    retrieved_examples = [
        {"nl": "For every n, n + 0 = n.", "lean": "theorem add_zero (n : Nat) : n + 0 = n := by simpa"}
    ]

    captured_payload = {}

    def fake_post(url, json):
        captured_payload["url"] = url
        captured_payload["json"] = json
        return _mock_response("example Lean code")

    with patch("agents.tools.translator_tool.requests.post", side_effect=fake_post):
        result = tool.run(
            natural_language_statement="Prove that zero is the additive identity for natural numbers.",
            retrieved_examples=retrieved_examples,
            history=history,
        )

    assert result == {"ok": True, "lean_translation": "example Lean code"}
    assert len(history) == 1  # ensure the original history is preserved

    assert captured_payload["url"] == "https://example.com/api"
    request_json = captured_payload["json"]
    assert request_json["model"] == tool.DEFAULT_MODEL

    messages = request_json["messages"]
    assert messages[:-1] == history
    user_message = messages[-1]
    assert user_message["role"] == "user"
    content = user_message["content"]

    assert "Natural language statement:" in content
    assert "Prove that zero is the additive identity" in content
    assert "Here are some similar examples for context" in content
    assert "For every n, n + 0 = n." in content
    assert "```lean" in content


def test_run_without_history_includes_statement():
    tool = LeanTranslationTool(api_url="https://example.com/api")

    captured_payload = {}

    def fake_post(url, json):
        captured_payload["json"] = json
        return _mock_response("lean result")

    with patch("agents.tools.translator_tool.requests.post", side_effect=fake_post):
        result = tool.run(natural_language_statement="For all n, n + 0 = n.")

    assert result == {"ok": True, "lean_translation": "lean result"}

    messages = captured_payload["json"]["messages"]
    assert len(messages) == 1
    assert "For all n, n + 0 = n." in messages[0]["content"]
    assert "Natural language statement:" in messages[0]["content"]
