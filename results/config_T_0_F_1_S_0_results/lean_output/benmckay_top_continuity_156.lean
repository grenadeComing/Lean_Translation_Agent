import Mathlib

/-- The Euclidean plane ℝ^2 is homeomorphic to any open ball in ℝ^2. -/
theorem benmckay_top_continuity_156 :
  ∀ (x : ℝ × ℝ) (r : ℝ), 0 < r →
    Nonempty (Homeomorph (ℝ × ℝ) (Subtype fun y : ℝ × ℝ => y ∈ Metric.ball x r)) :=
by
  sorry
