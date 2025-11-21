import Mathlib

/-- If f : E → ℝ is differentiable at x₀ and attains a local minimum at x₀, then the Fréchet
    derivative at x₀ is the zero continuous linear map. -/
theorem fderiv_eq_zero_of_is_local_min {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {f : E → ℝ} {x₀ : E} (hmin : IsLocalMin f x₀) (hd : DifferentiableAt ℝ f x₀) :
  fderiv ℝ f x₀ = 0 := by sorry
