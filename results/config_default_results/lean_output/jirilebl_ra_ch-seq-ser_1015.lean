import Mathlib

/-- Let x_n be convergent and y_n = max{x_n, 0}. Then lim y_n ≥ 0. -/
theorem lim_y_n_ge_zero_of_convergent {x : ℕ → ℝ} (hconv : ∃ a, Tendsto x atTop (nhds a)) :
  0 ≤ lim (fun n => max (x n) (0:ℝ)) := by
  sorry
