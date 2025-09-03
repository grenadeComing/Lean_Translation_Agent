import Mathlib

theorem Rudin_exercise_3_5 (a b : ℕ → ℝ) :
  Filter.limsup (fun n => a n + b n) atTop ≤ Filter.limsup a atTop + Filter.limsup b atTop := by sorry
