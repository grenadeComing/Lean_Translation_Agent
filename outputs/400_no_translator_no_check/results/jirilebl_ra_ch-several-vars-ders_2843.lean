import Mathlib

/--
Let f : ℝ^n → ℝ be differentiable at x0. Then the norm of the gradient equals the operator
norm of the derivative (sup over unit vectors):
  ‖gradient f x0‖ = sup { |fderiv ℝ f x0 h| : ‖h‖ = 1 }.
We state this by equating the gradient norm with the continuous linear map operator norm.
-/
theorem norm_gradient_eq_opNorm_fderiv {n : ℕ} (f : EuclideanSpace ℝ (Fin n) → ℝ) {x0 : EuclideanSpace ℝ (Fin n)}
  (h : DifferentiableAt ℝ f x0) :
  ‖gradient f x0‖ = ContinuousLinearMap.opNorm (fderiv ℝ f x0) := by sorry
