import Mathlib

/-!
Prove that Q has no proper subgroups of finite index.
This file states the result in Lean4 / mathlib style. The proof is omitted (sorry).
-/

theorem Dummit_Foote_exercise_3_2_21a :
  ∀ (H : AddSubgroup ℚ), H ≠ (⊤ : AddSubgroup ℚ) → ¬ Fintype (AddSubgroup.Quotient H) := by
  sorry
