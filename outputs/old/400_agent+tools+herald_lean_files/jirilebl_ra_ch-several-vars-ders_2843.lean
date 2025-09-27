import Mathlib

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] [InnerProductSpace ℝ F] [CompleteSpace F]

/-- The norm of the gradient equals the operator norm of the derivative. -/
theorem norm_gradient_eq_opNorm (f : F → ℝ) (x : F) (h : HasFDerivAt f (fderiv ℝ f x) x) :
  ‖gradient f x‖ = (fderiv ℝ f x).opNorm := by
  sorry
