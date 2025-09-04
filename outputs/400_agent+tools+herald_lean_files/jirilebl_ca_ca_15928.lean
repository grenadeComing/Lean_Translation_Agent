import Mathlib

/-- If U ⊂ ℂ is open and f : U → ℂ is holomorphic (differentiable on U) and injective,
then f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hfi : Function.Injective f) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry
