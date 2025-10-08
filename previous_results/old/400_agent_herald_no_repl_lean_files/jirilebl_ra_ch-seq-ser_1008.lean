import Mathlib

/-- Let (x_n) be a convergent real sequence with limit a, and define y_n = min (x_n) 0.
    Then y_n → min a 0, in particular lim y_n ≤ 0. -/
theorem seq_min_converges_le_zero {x : ℕ → ℝ} {a : ℝ} (h : Tendsto x atTop (𝓝 a)) :
  Tendsto (fun n => min (x n) 0) atTop (𝓝 (min a 0)) ∧ min a 0 ≤ 0 := by sorry
