import os
import csv
from openai import OpenAI
from pathlib import Path

openai_client = OpenAI()

def validate_translation(nl_statement: str, lean4_code: str) -> str:
    messages = [
        {
    "role": "system",
    "content": (
        "You are an expert in Lean4 and mathematics. "
        "You are given (A) a natural language mathematical statement and (B) a proposed Lean4 code translation. "
        "Your job is to determine whether (B) correctly expresses the meaning of (A).\n\n"

        "Do the following:\n"
        "1. Decide if (A) and (B) are logically equivalent. Output a boolean field: \"equivalent\" (True or False).\n"
        "2. Give a \"grade\" from 0-10:\n"
        "   - 0: completely unrelated\n"
        "   - 6: important differences\n"
        "   - 9: almost the same but minor issues\n"
        "   - 10: same meaning and fully correct\n"
        "3. Also include a second integer field called \"translationScore\" (same value as grade).\n"
        "4. Explain your evaluation in a \"reason\" field (string).\n\n"

        "Format your output as a **single JSON object**, exactly like this:\n"
        "{\n"
        "  \"equivalent\": true,\n"
        "  \"grade\": 10,\n"
        "  \"translationScore\": 10,\n"
        "  \"reason\": \"The Lean4 statement captures the same logic and quantifiers as the natural language statement.\"\n"
        "}"
    )}
    ]

    try:
        response = openai_client.chat.completions.create(
            model="gpt-4o",
            messages=messages,
            temperature=0.2,
        )
        content = response.choices[0].message.content.strip()
        return json.loads(content)

    except json.JSONDecodeError:
        return {
            "equivalent": False,
            "grade": -1,
            "translationScore": -1,
            "reason": "ERROR: Invalid JSON from model"
        }

    except Exception as e:
        return {
            "equivalent": False,
            "grade": -1,
            "translationScore": -1,
            "reason": f"ERROR: {str(e)}"
        }

def update_csv_in_place(file_path: str):
    # Step 1: Read all rows
    with open(file_path, "r", encoding="utf-8") as f:
        reader = list(csv.DictReader(f))
        fieldnames = reader[0].keys()

        # Ensure required columns exist
        extra_cols = ["validate_score", "validate_reason", "equivalent"]
        for col in extra_cols:
            if col not in fieldnames:
                fieldnames = list(fieldnames) + [col]

    # Step 2: Process unvalidated rows
    updated_rows = []
    total = 0
    skipped = 0
    errors = 0

    for row in reader:
        total += 1
        name = row.get("name", "")
        if row.get("validate_score", "").strip() not in ["", "-1"]:
            skipped += 1
            updated_rows.append(row)
            continue

        print(f"[{total}] Processing {name}...")
        nl = row.get("nl_statement", "")
        lean = row.get("lean4_code", "")

        result = validate_translation(nl, lean)

        row["validate_score"] = result.get("translationScore", -1)
        row["validate_reason"] = result.get("reason", "No reason given")
        row["equivalent"] = result.get("equivalent", False)

        if row["validate_score"] == -1:
            errors += 1

        updated_rows.append(row)

    # Step 3: Backup original file
    shutil.copy(file_path, file_path + ".bak")

    # Step 4: Overwrite original with updated content
    with open(file_path, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(updated_rows)

    print(f"\n✅ Done. Total: {total}, Skipped: {skipped}, Errors: {errors}")
    print(f"📦 Original file backed up as: {file_path}.bak")



if __name__ == "__main__":
    input_csv = "/Users/kezhang/Desktop/projects/Lean_Translation_agent/outputs/max_try_6_lean4_file_with_csv(with_translator_tool)test_144/pass_rate_stats.csv"
    update_csv_in_place(input_csv)