import Mathlib

/-- If f : E → ℝ is differentiable at x₀ and has a local minimum at x₀, then the derivative at x₀ is 0. -/
theorem fderiv_eq_zero_of_is_local_min {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {f : E → ℝ} {x₀ : E} (h_diff : DifferentiableAt ℝ f x₀) (h_min : IsLocalMin f x₀) :
  fderiv ℝ f x₀ = (0 : E →L[ℝ] ℝ) := by sorry
