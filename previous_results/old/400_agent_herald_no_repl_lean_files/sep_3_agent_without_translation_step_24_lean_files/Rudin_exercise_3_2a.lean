import Mathlib

open Filter

theorem rudin_exercise_3_2a : Tendsto (fun n : ℕ => Real.sqrt ((n : ℝ) ^ 2 + n) - (n : ℝ)) atTop (nhds (1 / 2 : ℝ)) := by sorry
