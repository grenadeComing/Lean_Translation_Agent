import Mathlib

variable {n : Nat}

open EuclideanSpace

variable {x0 : EuclideanSpace ℝ (Fin n)}
variable {f : EuclideanSpace ℝ (Fin n) → ℝ}

/-- For a differentiable real-valued function on Euclidean space, the norm of the gradient at x0
    equals the operator norm of the derivative at x0. -/
theorem gradient_norm_eq_opNorm_fderiv (hf : DifferentiableAt ℝ f x0) :
  ‖gradient f x0‖ = (fderiv ℝ f x0).opNorm := by sorry
