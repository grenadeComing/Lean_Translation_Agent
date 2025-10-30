import Mathlib

-- The Euclidean plane ℝ^2 is homeomorphic to any open ball in ℝ^2.
-- Here ℝ^2 is represented as ℝ × ℝ, and the open ball is the ball of radius r around c.
theorem euclidean_plane_homeomorphic_open_ball
  (c : ℝ × ℝ) (r : ℝ) (hr : 0 < r) :
  Homeomorph (ℝ × ℝ) { x : ℝ × ℝ // dist x c < r } := by
  -- The explicit construction of such a homeomorphism is standard:
  -- compose the standard homeomorphism ℝ^2 ≃ unit ball with a scaling/translation to Ball c r.
  -- This is provided here as a placeholder for the full proof.
  sorry
