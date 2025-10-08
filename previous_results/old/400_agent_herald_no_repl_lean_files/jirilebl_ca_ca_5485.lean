import Mathlib

open Complex Metric

/-- Schwarz lemma: Suppose f maps the unit disk to itself, is holomorphic on the unit
ball and f(0) = 0. Then |f'(0)| ≤ 1. -/
theorem schwarz_lemma_unit_disk (f : ℂ → ℂ)
  (hf : AnalyticOn ℂ f (metric.ball (0 : ℂ) 1))
  (h_map : ∀ z, z ∈ metric.ball (0 : ℂ) 1 → f z ∈ metric.ball (0 : ℂ) 1)
  (h0 : f 0 = 0) : Complex.abs (deriv f 0) ≤ 1 := by sorry
