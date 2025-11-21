import Mathlib

open Complex Metric

theorem schwarz_lemma (f : ℂ → ℂ)
  (h_map : ∀ z : ℂ, ‖z‖ < 1 → ‖f z‖ < 1)
  (h_diff : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1))
  (h0 : f 0 = 0) : ‖deriv f 0‖ ≤ 1 := by sorry
