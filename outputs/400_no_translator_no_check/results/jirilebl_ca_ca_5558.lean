import Mathlib

open Complex Metric

/-- Schwarz lemma: if f : 𝔻 → 𝔻 is holomorphic and f 0 = 0, then |f' 0| ≤ 1. -/
theorem schwarz_lemma_unit_disk {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1))
  (hmap : ∀ z, z ∈ Metric.ball (0 : ℂ) 1 → f z ∈ Metric.ball (0 : ℂ) 1)
  (h0 : f 0 = 0) :
  Complex.abs (deriv f 0) ≤ 1 := by sorry
