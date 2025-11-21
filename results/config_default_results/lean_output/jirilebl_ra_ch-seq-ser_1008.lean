import Mathlib

/-- Let x_n be a convergent real sequence with limit l, and define y_n = min (x_n, 0).
    Then y_n converges to min l 0, which is ≤ 0. -/
theorem lim_min_le_zero (x : ℕ → ℝ) (l : ℝ) (h : Filter.Tendsto x Filter.atTop (nhds l)) :
  Filter.Tendsto (fun n => min (x n) (0 : ℝ)) Filter.atTop (nhds (min l 0)) ∧ min l 0 ≤ 0 := by sorry
