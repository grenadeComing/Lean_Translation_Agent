import Mathlib

/-!
# Euclidean plane homeomorphic to any open ball

This file states that the Euclidean plane ℝ² is homeomorphic to any open ball in ℝ².
The proof is omitted (`by sorry`).
-/

theorem euclidean_plane_homeomorphic_to_open_ball (x : ℝ × ℝ) (r : ℝ) (hr : 0 < r) :
  Homeomorph (ℝ × ℝ) ({ y : ℝ × ℝ | dist y x < r }) := by sorry
