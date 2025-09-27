import os
import csv,json,shutil
import time
from openai import OpenAI
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

client = OpenAI()

def validate_translation(nl_statement: str, lean4_code: str) -> str:
    messages = [
        {
        "role": "system",
        "content": r"""(
            You are an expert in Lean 4, Mathlib, and Mathematics. You are an auditor with guidelines.  

            Instructions:  
            Your input will be a compiling Lean 4 code and a natural language statement. Your task is to determine if the compiling Lean 4 code successfully translates the natural language statement. No proofs are used but the translation should be essentially the same. 

            Think step by step:  
            1. Translate each line of the Lean 4 code into natural language. Assess if it makes sense and is on the right path. 
            2. When you finish, see if the whole translation is faithful to the original statement.  
            3. Do a final check: are the two math problems the same or different? Compare each statement carefully. Point out any differences you found.  

            Guidelines:  
            1. It must be a legitimate, faithful translation in order to pass. Keep in mind there may be discrepancies between formalized Lean4 code and natural language.  Keep in mind this Lean4 code compiles so the terms it does not define are really a part of Mathlib.
            2. The code should be using the latest, applicable Mathlib terms.  This could be a red flag. If it faithfully defines Mathlib concepts then it's fine.
            3. Check if the Lean 4 code makes secondary definitions other than just the final theorem/definition statement. This could be a red flag. If all auxiliary definitions are faithfully defined and not vacuous placeholders, then it's fine. However if any auxiliary definition  is vacuous (e.g., `:= True`, `:= none`, or filled with `sorry`),  then the translation fails. The auxiliary definition must faithfully describe what it it's trying to say. 
            4. Only if each auxiliary definition is legitimate and the final theorem matches the statement in mathematical meaning, then the translation passes. Remember that there may be some technical details in formalization that slightly changes the meaning from natural language. Do not punish the translation for this. As long as there was no cheating in the translation, and the translation is genuinely accurate, then it is a pass. 
            5. If it's a near pass asses if the Lean4 code is the good way to  formalize the natural language statement. If it is a slight generalization or a slight specialization of the natural language statement, then that's fine. Consider giving it a pass if no serious mistakes are made. 


            After you have made your judgement, carefully review your analysis. 
            Assign a Grade, an integer from 0-10, using this rubric. A 10 is only assigned for faithful code.
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

def process_row(row_data):
    """Process a single row"""
    row, index, total = row_data
    
    name = row.get("name", "")
    print(f"[{index + 1}/{total}] Processing {name}...")
    
    nl = row.get("nl_statement", "")
    lean = row.get("lean4_code", "")
    
    # Your validation function
    result = validate_translation(nl, lean)
    
    # Update row
    row["validate_score"] = result.get("grade", -1)
    row["validate_reason"] = result.get("thought", "No reason given")
    row["equivalent"] = result.get("faithful_score", False)
    
    return row

# Simple lock for file writing
write_lock = threading.Lock()

def process_and_write_row(args):
    """Process row and immediately append to file"""
    row, index, total, temp_file, fieldnames = args
    
    name = row.get("name", "")
    print(f"[{index + 1}/{total}] Processing {name}...")
    
    try:
        nl = row.get("nl_statement", "")
        lean = row.get("lean4_code", "")
        
        # Your validation function
        result = validate_translation(nl, lean)
        
        # Update row
        row["validate_score"] = result.get("grade", -1)
        row["validate_reason"] = result.get("thought", "No reason given")
        row["equivalent"] = result.get("faithful_score", False)
        
        # Write immediately to temp file
        with write_lock:
            with open(temp_file, "a", newline="", encoding="utf-8") as f:
                writer = csv.DictWriter(f, fieldnames=fieldnames)
                writer.writerow(row)
        
        print(f"✓ [{index + 1}/{total}] Saved {name}")
        return True
        
    except Exception as e:
        print(f"✗ [{index + 1}/{total}] Error processing {name}: {e}")
        # Still write the original row
        with write_lock:
            with open(temp_file, "a", newline="", encoding="utf-8") as f:
                writer = csv.DictWriter(f, fieldnames=fieldnames)
                writer.writerow(row)
        return False

def update_csv_write_immediately(file_path: str, max_workers: int = 12):
    """Process and write each row as soon as it's done"""
    
    # Read file
    with open(file_path, "r", encoding="utf-8") as f:
        reader = list(csv.DictReader(f))
        if not reader:
            print("No rows to process!")
            return
        fieldnames = list(reader[0].keys())
    
    # Add new columns
    new_cols = ["validate_score", "validate_reason", "equivalent"]
    for col in new_cols:
        if col not in fieldnames:
            fieldnames.append(col)
    
    total = len(reader)
    temp_file = file_path + ".tmp"
    
    # Create temp file with headers
    with open(temp_file, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
    
    print(f"Processing {total} rows, writing results immediately...")
    
    # Process in parallel, write as completed
    successes = 0
    try:
        with ThreadPoolExecutor(max_workers=max_workers) as executor:
            # Submit all tasks
            futures = [
                executor.submit(process_and_write_row, (row.copy(), i, total, temp_file, fieldnames))
                for i, row in enumerate(reader)
            ]
            
            # Collect results as they complete
            for future in as_completed(futures):
                try:
                    if future.result():
                        successes += 1
                except Exception as e:
                    print(f"Unexpected error: {e}")
        
        # Replace original file
        shutil.copy(file_path, file_path + ".bak")
        shutil.move(temp_file, file_path)
        
        errors = total - successes
        print(f"✅ Done! {successes} successful, {errors} errors")
        
    except Exception as e:
        print(f"Error during processing: {e}")
        # Clean up temp file if something went wrong
        try:
            import os
            if os.path.exists(temp_file):
                os.remove(temp_file)
        except:
            pass
        raise

# === Run ===
if __name__ == "__main__":
    start_time = time.time()
    
    CVS_folder_path = Path(__file__).parent
    input_csv = CVS_folder_path / "results/pass_rate_stats.csv"
    update_csv_write_immediately(str(input_csv))
    end_time = time.time()
    print(f"Execution time: {end_time - start_time} seconds")