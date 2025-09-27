import Mathlib

open Filter

/-- If x_n → l, then the limit of max(x_n,0) is ≥ 0. -/
theorem lim_max_nonneg {x : ℕ → ℝ} {l : ℝ} (h : Tendsto x atTop (nhds l)) :
  0 ≤ max l 0 := by sorry
