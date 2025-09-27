import Mathlib
open Topology InnerProductSpace Set
open scoped Gradient

/-- Let E = ℝ^n with the usual inner product. For f : E → ℝ differentiable at x0, show that the norm of the gradient at x0 equals the operator norm of the derivative at x0, i.e.
‖gradient f x0‖ = sup { |(fderiv ℝ f x0) h| : ‖h‖ = 1 }. -/
theorem norm_gradient_eq_opNorm_fderiv {n : ℕ} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    [CompleteSpace E] {f : E → ℝ} {x₀ : E} (hf : DifferentiableAt ℝ f x₀) :
    ‖∇ f x₀‖ = ‖fderiv ℝ f x₀‖ := by sorry
