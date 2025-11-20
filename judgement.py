import argparse
import csv
import json
import shutil
import time
from openai import OpenAI
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, FIRST_COMPLETED, wait
from typing import Any, Dict, Iterable, Tuple

client = OpenAI()

RESULT_COLUMNS = ("validate_score", "validate_reason", "equivalent")

def validate_translation(nl_statement: str, lean4_code: str, compile_pass: bool) -> Dict[str, Any]:
    messages = [
        {
        "role": "system",
        "content": r"""(
            You are an expert in Lean 4, Mathlib, and Mathematics. You are an auditor with guidelines.  

            Instructions:  
            Your input will be a Lean 4 code snippet (which may or may not compile) and a natural language statement.
            You must evaluate both the compilation status and the translation faithfulness.

            IMPORTANT:
            - If compilation_status is False, the Lean code fails to compile. In this case:
                • The translation cannot be considered faithful.
                • The grade must be in the range 0–3.
                • faithful_score must be 0.
                • Your analysis should clearly explain why the code fails to compile and why this prevents faithfulness.
            - If compilation_status is True, evaluate semantic faithfulness normally.

            Think step by step:  
            1. Translate each line of the Lean 4 code into natural language. Assess if it makes sense and is on the right path. 
            2. When you finish, see if the whole translation is faithful to the original statement.  
            3. Do a final check: are the two math problems the same or different? Compare each statement carefully. Point out any differences you found.  

            Guidelines:  
            1. It must be a legitimate, faithful translation in order to pass. Keep in mind that some terms may come from Mathlib; however, if the code does not compile, the translation cannot be faithful.
            2. The code should be using the latest, applicable Mathlib terms.  This could be a red flag. If it faithfully defines Mathlib concepts then it's fine.
            3. Check if the Lean 4 code makes secondary definitions other than just the final theorem/definition statement. This could be a red flag. If all auxiliary definitions are faithfully defined and not vacuous placeholders, then it's fine. However if any auxiliary definition  is vacuous (e.g., `:= True`, `:= none`, or filled with `sorry`),  then the translation fails. The auxiliary definition must faithfully describe what it it's trying to say. 
            4. Only if each auxiliary definition is legitimate and the final theorem matches the statement in mathematical meaning, then the translation passes. Remember that there may be some technical details in formalization that slightly changes the meaning from natural language. Do not punish the translation for this. As long as there was no cheating in the translation, and the translation is genuinely accurate, then it is a pass. 
            5. If it's a near pass asses if the Lean4 code is the good way to  formalize the natural language statement. If it is a slight generalization or a slight specialization of the natural language statement, then that's fine. Consider giving it a pass if no serious mistakes are made. 


            After you have made your judgement, carefully review your analysis. 
            Compilation rule:
            • If compile fails → grade ≤ 3, faithful_score = 0
            • If compile passes → evaluate translation normally
            A 10 is only assigned for faithful code.
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
            ``` Prove that the number \\(n\\) of sheets (which might be \\(\\infty\\)) above an evenly covered open set is constant along any path in \\(Y\\). In particular, if \\(Y\\) is path connected, this number \\(n\\) is constant, and we say that the covering map is \\(n\\) to \\(1\\) ```

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
            "faithful": true or false,   // boolean. true = faithful, false = unfaithful
            "grade": 0..10,              // integer
            "thought": "### BEGIN THOUGHT\n<your detailed analysis>\n### END THOUGHT"
            }
        """
        },

        {"role": "user", "content": 
         f"Here is the natural language statement: {nl_statement}\n\n Here is the Lean4 Code: {lean4_code}\n Compilation result: pass = {compile_pass}"}

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

def _augment_row(row: Dict[str, Any], result: Dict[str, Any]) -> Tuple[Dict[str, Any], bool]:
    updated = row.copy()

    compile_pass = bool(int(row.get("compile_status", 0)))
    raw_grade = int(result.get("grade", -1))
    faithful = bool(result.get("faithful", False))

    final_grade = min(raw_grade, 3) if not compile_pass else raw_grade
    equivalent = compile_pass and faithful and final_grade >= 9

    updated["validate_score"] = final_grade
    updated["validate_reason"] = result.get("thought") or json.dumps(result, indent=2)
    updated["equivalent"] = 1 if equivalent else 0

    return updated, final_grade >= 0




def _evaluate_single(args: Tuple[int, Dict[str, Any]]) -> Tuple[int, str, Dict[str, Any], bool]:
    idx, row = args
    name = row.get("name", "")
    nl = row.get("nl_statement", "")
    lean = row.get("lean4_code", "")
    compile_pass = bool(int(row.get("compile_status", 0)))


    result = validate_translation(nl, lean, compile_pass)
    updated_row, success = _augment_row(row, result)
    return idx, name, updated_row, success


def _ensure_fieldnames(existing: Iterable[str]) -> Tuple[str, ...]:
    fieldnames = list(existing)
    for col in RESULT_COLUMNS:
        if col not in fieldnames:
            fieldnames.append(col)
    return tuple(fieldnames)


def evaluate_summary_csv(summary_path: Path, max_workers: int = 12) -> None:
    with open(summary_path, "r", encoding="utf-8") as count_file:
        total = sum(1 for _ in csv.DictReader(count_file))

    if total == 0:
        print("No rows to process!")
        return

    successes = 0

    with open(summary_path, "r", encoding="utf-8") as source:
        reader = csv.DictReader(source)
        if reader.fieldnames is None:
            raise ValueError("Summary CSV missing header row.")
        fieldnames = _ensure_fieldnames(reader.fieldnames)

        temp_path = summary_path.with_suffix(summary_path.suffix + ".tmp")

        print(f"Processing {total} rows from {summary_path} ...")

        with open(temp_path, "w", newline="", encoding="utf-8") as tmp_file:
            writer = csv.DictWriter(tmp_file, fieldnames=fieldnames)
            writer.writeheader()

            next_to_write = 0
            result_buffer: Dict[int, Tuple[Dict[str, Any], bool, str]] = {}

            with ThreadPoolExecutor(max_workers=max_workers) as executor:
                pending = {}

                def handle_done(done_futures) -> None:
                    nonlocal successes, next_to_write
                    for future in done_futures:
                        idx, name, updated_row, success = future.result()
                        result_buffer[idx] = (updated_row, success, name)
                        pending.pop(future, None)

                    while next_to_write in result_buffer:
                        row_data, success, name = result_buffer.pop(next_to_write)
                        status = "✓" if success else "✗"
                        print(f"{status} [{next_to_write + 1}/{total}] {name}")
                        writer.writerow(row_data)
                        if success:
                            successes += 1
                        next_to_write += 1

                for idx, row in enumerate(reader):
                    future = executor.submit(_evaluate_single, (idx, row))
                    pending[future] = idx

                    if len(pending) >= max_workers:
                        done, _ = wait(list(pending.keys()), return_when=FIRST_COMPLETED)
                        handle_done(done)

                while pending:
                    done, _ = wait(list(pending.keys()), return_when=FIRST_COMPLETED)
                    handle_done(done)

        backup_path = summary_path.with_suffix(summary_path.suffix + ".bak")
        shutil.copy(summary_path, backup_path)
        temp_path.replace(summary_path)

    failures = total - successes
    print(f"✅ Completed evaluation. {successes} succeeded, {failures} failed.")

def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Validate Lean translations recorded in a summary CSV."
    )
    parser.add_argument(
        "config",
        help="Config name or path used when generating the results (e.g., 'default', 'config_custom').",
    )
    return parser.parse_args()


def resolve_summary_path(config: str) -> Path:
    config_label = Path(config).stem or config
    results_root = Path(__file__).parent / "results"
    target_dir = results_root / f"config_{config_label}_results"
    return target_dir / "agent_run_summary.csv"


# === Run ===
if __name__ == "__main__":
    start_time = time.time()

    args = parse_args()
    summary_path = resolve_summary_path(args.config)

    if not summary_path.exists():
        raise SystemExit(f"Summary CSV not found at {summary_path}")

    evaluate_summary_csv(summary_path)
    end_time = time.time()
    print(f"Execution time: {end_time - start_time} seconds")
