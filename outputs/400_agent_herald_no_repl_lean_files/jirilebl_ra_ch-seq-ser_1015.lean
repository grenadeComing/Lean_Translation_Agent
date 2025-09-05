import Mathlib

/-- Let (x_n) be a convergent real sequence with limit l, and define y_n = max (x_n) 0.
    Then the sequence (y_n) converges to max l 0, hence its limit is nonnegative. -/
theorem seq_max_limit_nonneg {x : ℕ → ℝ} {l : ℝ} (h : Tendsto x atTop (𝓝 l)) :
  Tendsto (fun n => max (x n) 0) atTop (𝓝 (max l 0)) ∧ max l 0 ≥ 0 := by sorry
