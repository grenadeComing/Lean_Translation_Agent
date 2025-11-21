import Mathlib

/-- For any center c : ℝ × ℝ and any radius r > 0, the Euclidean plane ℝ^2 is homeomorphic
to the open ball of radius r around c. -/
theorem is_homeomorphic_plane_ball (c : ℝ × ℝ) (r : ℝ) (hr : 0 < r) :
  Nonempty (Homeomorph (ℝ × ℝ) { x : ℝ × ℝ | dist x c < r }) := by sorry