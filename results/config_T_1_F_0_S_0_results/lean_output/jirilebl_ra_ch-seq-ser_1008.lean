import Mathlib

/-- Let (x_n) be a convergent sequence of real numbers with limit L, and define y_n := min (x_n, 0).
    Then lim_{n→∞} y_n = min L 0, in particular lim_{n→∞} y_n ≤ 0. -/
theorem lim_min_seq_le_zero (x : ℕ → ℝ) {L : ℝ} (h : Tendsto x atTop (𝓝 L)) :
  Tendsto (fun n => min (x n) 0) atTop (𝓝 (min L 0)) ∧ (min L 0) ≤ 0 := by sorry
