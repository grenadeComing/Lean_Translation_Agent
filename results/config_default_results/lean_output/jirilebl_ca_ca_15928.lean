import Mathlib

/-- If U ⊂ ℂ is open and f : U → ℂ is holomorphic (differentiable on U) and injective on U,
then the derivative of f at any z ∈ U is nonzero. -/
theorem inj_holomorphic_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (h_inj : Set.InjOn f U) (z : ℂ) (hz : z ∈ U) :
  deriv f z ≠ 0 := by sorry
