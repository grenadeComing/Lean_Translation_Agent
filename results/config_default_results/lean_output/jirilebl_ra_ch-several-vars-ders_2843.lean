import Mathlib

/-!
Let f : ℝ^n → ℝ be differentiable at x0. Show that the norm of the gradient
equals the operator norm of the derivative, i.e.

  ‖gradient f x0‖ = ‖fderiv ℝ f x0‖.

We state the result for an arbitrary inner product space E over ℝ; this
recovers the ℝ^n case by taking E = Fin n → ℝ.
-/

theorem gradient_norm_eq_deriv_norm {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [CompleteSpace E] {f : E → ℝ} {x0 : E} (hd : DifferentiableAt ℝ f x0) :
  ‖gradient f x0‖ = ‖fderiv ℝ f x0‖ := by sorry
