import Mathlib

/-- Ireland-Rosen, Exercise 2.27(a): The sum of 1/n over squarefree n diverges. -/
theorem ireland_rosen_exercise_2_27a : ¬ Summable (fun n : ℕ => if 0 < n ∧ Squarefree n then (1 : ℝ) / n else 0) := by sorry
