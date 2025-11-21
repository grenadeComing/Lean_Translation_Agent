import Mathlib

/-- Let (x_n) be a convergent real sequence and define y_n := max (x_n) 0.
    Then lim_{n→∞} y_n ≥ 0. -/
theorem lim_max_nonneg_of_tendsto {x : ℕ → ℝ} {L : ℝ} (h : Tendsto x atTop (𝓝 L)) :
  Tendsto (fun n => max (x n) 0) atTop (𝓝 (max L 0)) ∧ 0 ≤ max L 0 := by sorry