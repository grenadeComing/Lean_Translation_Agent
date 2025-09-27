import Mathlib

/-- The Euclidean plane R^2 is homeomorphic to any open ball in R^2. -/
theorem R2_homeo_ball (r : ℝ) (hr : 0 < r) : Homeomorph (ℝ × ℝ) ({ x : ℝ × ℝ // x ∈ Metric.ball (0 : ℝ × ℝ) r }) := by
  sorry
