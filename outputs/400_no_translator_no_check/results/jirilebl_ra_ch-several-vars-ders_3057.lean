import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable {f : E → ℝ} {x0 : E} {f' : E →L[ℝ] ℝ}

/-- If f has a (Fréchet) derivative f' at x0 and x0 is a local minimum of f,
    then the derivative f' is the zero continuous linear map. -/
theorem has_fderiv_at.is_local_min_deriv_zero (hf : HasFDerivAt f f' x0)
  (hmin : IsLocalMin f x0) : f' = 0 := by sorry
