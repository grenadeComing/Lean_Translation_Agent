import Mathlib

/-- The Euclidean plane R × R is homeomorphic to any open ball in R × R. -/
theorem euclidean_plane_homeomorphic_to_any_open_ball (a : ℝ × ℝ) (r : ℝ) (hr : 0 < r) :
  Nonempty (Homeomorph (ℝ × ℝ) ({ x : ℝ × ℝ | dist x a < r })) :=
by sorry