import Mathlib

/--
If x_n -> a, and y_n = max(x_n, 0), then y_n -> max(a,0) and in particular the limit is >= 0.
-/
theorem seq_max_nonneg_limit {x : ℕ → ℝ} {a : ℝ} (h : Filter.Tendsto (x) Filter.atTop (nhds a)) :
  Filter.Tendsto (fun n => max (x n) 0) Filter.atTop (nhds (max a 0)) ∧ 0 ≤ max a 0 := by sorry
