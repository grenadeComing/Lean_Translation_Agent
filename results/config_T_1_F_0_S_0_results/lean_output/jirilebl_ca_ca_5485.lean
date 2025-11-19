import Mathlib

/-- Suppose f : D → D is holomorphic and f(0) = 0, then |f'(0)| ≤ 1. -/
theorem schwarz_lemma_deriv_le_one {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f (ball (0 : ℂ) 1))
  (hmap : ∀ z, z ∈ ball (0 : ℂ) 1 → f z ∈ ball (0 : ℂ) 1)
  (h0 : f 0 = 0) :
  Complex.abs (deriv f 0) ≤ 1 := by sorry