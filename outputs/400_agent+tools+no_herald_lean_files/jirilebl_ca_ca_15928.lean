import Mathlib

/-- If U ⊆ ℂ is open and f : ℂ → ℂ is holomorphic (differentiable on U) and injective,
then the derivative of f at every point of U is nonzero. -/
theorem injective_holomorphic_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (h : DifferentiableOn ℂ f U) (hinj : Function.Injective f) : ∀ z ∈ U, deriv f z ≠ (0 : ℂ) := by
  sorry
