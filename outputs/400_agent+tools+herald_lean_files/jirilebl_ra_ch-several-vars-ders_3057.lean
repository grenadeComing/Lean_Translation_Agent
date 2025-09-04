import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- If f : E → ℝ is differentiable at x0 and has a local minimum at x0, then the derivative is 0. -/
theorem fderiv_eq_zero_of_isLocalMin {f : E → ℝ} {x0 : E}
  (hdiff : DifferentiableAt ℝ f x0) (hmin : IsLocalMin f x0) :
  fderiv ℝ f x0 = (0 : E →L[ℝ] ℝ) := by sorry
