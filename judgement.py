import os
import csv,json,shutil
import time
from openai import OpenAI
from pathlib import Path

client = OpenAI()

def validate_translation(nl_statement: str, lean4_code: str) -> str:
    messages = [
        {
        "role": "system",
        "content": r"""(
            You are an expert in Lean 4, Mathlib, and Mathematics. You are an auditor with strict guidelines.  

            Instructions:  
            Your input will be a compiling Lean 4 code and a natural language statement. Your task is to determine if the compiling Lean 4 code successfully translates the natural language statement. No proofs are used but the translation must be the same.  

            Think step by step:  
            1. Translate each line of the Lean 4 code into natural language. Assess if it makes sense and is on the right path.  
            2. When you finish, see if the whole translation is faithful to the original statement.  
            3. Do a final check: are the two math problems the same or different? Compare each statement carefully. Point out any differences you found.  

            Guidelines:  
            1. You are extra harsh.  It must be a legitimate, faithful translation in order to pass.  
            2. The code should be using the latest, applicable Mathlib terms.  This could be a red flag. If it faithfully defines Mathlib concepts then it's fine.
            3. Check if the Lean 4 code makes secondary definitions other than just the final theorem/definition statement. This could be a red flag. If all auxiliary definitions are faithfully defined and not vacuous placeholders, then it's fine. However if any auxiliary definition  is vacuous (e.g., `:= True`, `:= none`, or filled with `sorry`),  then the translation fails. The auxiliary definition must faithfully describe what it it's trying to say. 
            4. Only if each auxiliary definition is legitimate and the final theorem matches the statement in mathematical meaning, then the translation passes.  It is okay to be logically equivalent to the original statement as well. That is considered having the same mathematical meaning. 

            After you have made your judgement, carefully review your analysis. 
            Assign a Grade, an integer from 0-10, using this rubric:
            0: completely unrelated
            3:  makes up vacuous definitions and even if they were fixed, the final theorem/definition would not be faithful
            6: makes up vacuous definitions but if that were fixed, then the final theorem/definition is faithful
            9: almost the same but it's not faithful. 
            10: it is faithful
            You can place the grade in-between if you think that's where it should be. 
            Please verify the grade reflects the mistakes in translation.

            ---

            ### Example

            Here is the Lean 4 code:  
            ```lean
            import Mathlib

            universe u v

            variables {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]

            /-- A very weak placeholder for a covering map. -/
            def CoveringMap (p : X → Y) : Prop := True

            /-- A predicate saying an open set U of Y is evenly covered by p. -/
            def evenly_covered (p : X → Y) (U : Set Y) : Prop := True

            /-- The number of sheets above an evenly covered open set. `none` represents infinity. -/
            def num_sheets (p : X → Y) (U : Set Y) : Option Nat := none

            /-- Path connectedness placeholder. -/
            def PathConnected (Y : Type v) [TopologicalSpace Y] : Prop := True

            namespace Covering

            /-- If U and V are evenly covered and have nonempty intersection then they have the same
                number of sheets. (Placeholder statement; proof omitted.) -/
            theorem sheets_equal_on_overlap {p : X → Y} (hp : CoveringMap p) {U V : Set Y}
            (heU : evenly_covered p U) (heV : evenly_covered p V) (hnonempty : (U ∩ V).Nonempty) :
            num_sheets p U = num_sheets p V := by sorry

            /-- If p is a covering map and Y is path connected, then there exists a fixed number n
                (possibly ∞) such that every point of Y has an evenly covered neighborhood with
                exactly n sheets. -/
            theorem covering_map_n_to_one_of_path_connected {p : X → Y} (hp : CoveringMap p)
            (hpath : PathConnected Y) :
            ∃ (n : Option Nat), ∀ (y : Y), ∃ (U : Set Y), y ∈ U ∧ IsOpen U ∧ evenly_covered p U ∧ num_sheets p U = n :=
            by sorry

            end Covering```

            Here is the original  natural language statement
            ```{"name": "benmckay_top_covering-spaces_62", 
            "nl_statement": "Prove that the number \\(n\\) of sheets (which might be \\(\\infty\\)) above an evenly covered open set is constant along any path in \\(Y\\). In particular, if \\(Y\\) is path connected, this number \\(n\\) is constant, and we say that the covering map is \\(n\\) to \\(1\\).", 
            "domain": "Topology"}```

            ###BEGIN THOUGHT
            Setup:
            Variables X and Y are introduced as topological spaces. This matches the context of the original statement.
            Definitions:
            ```CoveringMap (p : X → Y) : Prop := True``` → This is a placeholder, not Mathlib's real definition. It does not encode the covering map property. Problem.
            ```evenly_covered (p : X → Y) (U : Set Y) : Prop := True``` → Again a placeholder, not the real Mathlib definition. Problem.
            ```num_sheets (p : X → Y) (U : Set Y) : Option Nat := none``` → Again, vacuous definition. Problem.
            ```PathConnected (Y : Type v) [TopologicalSpace Y] : Prop := True``` → Placeholder. Problem.
            At this point, all auxiliary definitions are fake.
            Theorems:
            ```theorem covering_map_n_to_one_of_path_connected {p : X → Y} (hp : CoveringMap p) (hpath : PathConnected Y) : ∃ (n : Option Nat), ∀ (y : Y), ∃ (U : Set Y), y ∈ U ∧ IsOpen U ∧ evenly_covered p U ∧ num_sheets p U = n := by sorry```
            The listed hypotheses match the context of the statement. The theorem statement itself is logically equivalent to the original statement. However, the previous contexts were vacuously defined. Since there is at least one problem, the translation fails. 
            ###END THOUGHT

            ###FAITHFUL SCORE
            0

            ###GRADE
            6
            ____________________________________________

            Output contract (STRICT):
            Return a single JSON object with the following fields ONLY:
            {
            "faithful_score": 0 or 1,   // 0=not faithful, 1=faithful
            "grade": 0..10,              // integer
            "thought": "### BEGIN THOUGHT\n<your detailed analysis>\n### END THOUGHT"
            }
        """
        },

        {"role": "user", "content": f"Here is the natural language statement: {nl_statement}\n\n Here is the Lean4 Code: {lean4_code}\n"}

    ]

    try:
        response = client.responses.create(
            model="gpt-5",
            reasoning={"effort": "medium"},
            input=messages,
        )
        content = response.output_text
        return json.loads(content)

    except json.JSONDecodeError:
        return {
            "equivalent": 0,
            "grade": -1,
            "reason": "ERROR: Invalid JSON from model"
        }

    except Exception as e:
        return {
            "equivalent": 0,
            "grade": -1,
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

    # Step 2: Process every row, even if already filled
    updated_rows = []
    total = 0
    errors = 0

    for row in reader:
        total += 1
        name = row.get("name", "")
        print(f"[{total}] Re-processing {name}...")

        nl = row.get("nl_statement", "")
        lean = row.get("lean4_code", "")

        result = validate_translation(nl, lean)

        row["validate_score"] = result.get("grade", -1)
        row["validate_reason"] = result.get("thought", "No reason given")
        row["equivalent"] = result.get("faithful_score", False)

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

    print(f"\n✅ Done. Reprocessed {total} rows. Errors: {errors}")
    print(f"📦 Original file backed up as: {file_path}.bak")

# === Run ===
if __name__ == "__main__":
    start_time = time.time()
    
    input_csv = "/Users/kezhang/Desktop/projects/Lean_Translation_agent/outputs/max_try_6_lean4_file_with_csv(with_translator_tool)test_144/pass_rate_stats.csv"
    update_csv_in_place(input_csv)
    end_time = time.time()
    print(f"Execution time: {end_time - start_time} seconds")