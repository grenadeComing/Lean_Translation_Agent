import Mathlib

/-- The Euclidean plane R^2 is homeomorphic to any open ball in R^2. -/
theorem plane_homeomorphic_open_ball (c : ℝ × ℝ) (r : ℝ) (hr : 0 < r) :
  Nonempty (Homeomorph (ℝ × ℝ) (Metric.ball c r)) := by sorry
