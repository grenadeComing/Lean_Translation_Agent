import Mathlib

theorem Pugh_exercise_3_4 : Filter.Tendsto (fun n : Nat => Real.sqrt ((n : ℝ) + 1) - Real.sqrt (n : ℝ)) Filter.atTop (nhds (0 : ℝ)) := by sorry
