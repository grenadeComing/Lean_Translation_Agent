import Mathlib

/-!
# Homeomorphism between R^2 and any open ball in R^2

This file states that the Euclidean plane ℝ² is homeomorphic to any open ball in ℝ².
-/

theorem benmckay_top_continuity_156 (c : ℝ × ℝ) {r : ℝ} (hr : 0 < r) : Nonempty (Homeomorph (ℝ × ℝ) (Metric.ball c r)) := by sorry
