import Mathlib

/-- Suppose f : 𝔻 → 𝔻 is holomorphic and f(0) = 0, then |f'(0)| ≤ 1. -/
theorem schwarz_lemma_bound_deriv_zero {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1))
  (hmap : ∀ z ∈ Metric.ball (0 : ℂ) 1, f z ∈ Metric.ball (0 : ℂ) 1)
  (h0 : f 0 = 0) : ‖deriv f 0‖ ≤ 1 := by sorry