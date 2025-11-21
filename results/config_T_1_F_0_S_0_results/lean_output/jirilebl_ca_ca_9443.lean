import Mathlib

/-- If U ⊂ ℂ is open and f : U → ℂ is holomorphic (complex-differentiable) and injective,
then the complex derivative at every point of U is nonzero. -/
theorem differentiable_injective_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} {z : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hinj : InjOn f U) (hz : z ∈ U) :
  fderiv ℂ f z ≠ 0 := by sorry