import Mathlib

/-- The Euclidean plane ℝ^2 is homeomorphic to any open ball in ℝ^2. More precisely: for any center a : ℝ×ℝ and radius r : ℝ with r > 0, the space ℝ×ℝ (with the usual topology) is homeomorphic to the open ball {x | dist x a < r}. -/
theorem plane_homeomorphic_ball (a : ℝ × ℝ) (r : ℝ) (hr : 0 < r) :
  Nonempty (ℝ × ℝ ≃ₜ { x : ℝ × ℝ | dist x a < r }) := by sorry
