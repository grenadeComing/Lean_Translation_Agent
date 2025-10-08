import Mathlib

variable {x : ℕ → ℝ}

def y (n : ℕ) := max (x n) 0

/-- If x_n → l then max(x_n, 0) → max(l, 0). -/
theorem tendsto_max_of_tendsto (l : ℝ) (h : Filter.Tendsto x Filter.atTop (nhds l)) :
  Filter.Tendsto (fun n => max (x n) 0) Filter.atTop (nhds (max l 0)) := by sorry

/-- In particular, the limit of y_n = max(x_n,0) is ≥ 0. -/
theorem lim_y_nonneg (l : ℝ) (h : Filter.Tendsto x Filter.atTop (nhds l)) :
  0 ≤ (max l 0) := by sorry
