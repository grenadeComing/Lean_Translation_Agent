import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- If f : E → ℝ has a Fréchet derivative at x0 and has a local minimum at x0, then the derivative is 0. -/
theorem hasFDerivAt_eq_zero_of_isLocalMin {f : E → ℝ} {x0 : E} {f' : E →L[ℝ] ℝ}
  (hd : HasFDerivAt f f' x0) (hmin : IsLocalMin f x0) :
  f' = 0 := by sorry
