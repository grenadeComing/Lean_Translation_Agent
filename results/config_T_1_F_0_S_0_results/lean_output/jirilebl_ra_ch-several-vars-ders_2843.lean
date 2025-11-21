import Mathlib

/-- Let f : R^n → R be differentiable at x0. The norm of the gradient at x0 equals the
operator norm of the derivative, i.e. the supremum of |Df(x0) h| over unit vectors h. -/
theorem gradient_norm_eq_sup {n : ℕ} (f : (Fin n → ℝ) → ℝ) {x0 : Fin n → ℝ}
  (hf : DifferentiableAt ℝ f x0) :
  ‖∇ f x0‖ = Sup ({ |(fderiv ℝ f x0) h| | h : Fin n → ℝ, ‖h‖ = 1 } : Set ℝ) := by sorry
