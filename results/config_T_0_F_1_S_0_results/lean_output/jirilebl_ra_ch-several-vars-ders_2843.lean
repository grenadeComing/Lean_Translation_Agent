import Mathlib

/-!
Statement: Let f : R^n → R be differentiable at x0. Then ||gradient f x0|| = ||(fderiv ℝ f x0)||,
i.e. the gradient norm equals the operator norm of the derivative.
-/

theorem norm_gradient_eq_op_norm {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [CompleteSpace E]
  (f : E → ℝ) (x : E) (hd : DifferentiableAt ℝ f x) :
  ‖gradient f x‖ = ‖(fderiv ℝ f x : E →L[ℝ] ℝ)‖ := by
  sorry
