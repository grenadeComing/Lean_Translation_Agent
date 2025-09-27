import Mathlib

open Nat

theorem Ireland_Rosen_exercise_2_27a :
  ¬ Summable (fun k : ℕ => if Squarefree (k + 1 : ℕ) then (1 : ℝ) / (k + 1 : ℝ) else 0) := by
  sorry
