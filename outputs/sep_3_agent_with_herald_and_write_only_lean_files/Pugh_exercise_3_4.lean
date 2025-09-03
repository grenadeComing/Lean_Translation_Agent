import Mathlib

/-- Exercise: Show sqrt(n+1) - sqrt(n) → 0 as n → ∞. -/
theorem Pugh_exercise_3_4 : Tendsto (fun n : ℕ => Real.sqrt ((n : ℝ) + 1) - Real.sqrt (n : ℝ)) atTop (nhds (0 : ℝ)) := by
  sorry
