import Mathlib

/-- Exercise: show sqrt(n+1) - sqrt(n) -> 0 as n -> ∞. -/
theorem tendsto_sqrt_succ_sub_sqrt_zero :
  Filter.Tendsto (fun n : ℕ => Real.sqrt ((n : ℝ) + 1) - Real.sqrt (n : ℝ)) Filter.atTop (nhds (0 : ℝ)) := by sorry
