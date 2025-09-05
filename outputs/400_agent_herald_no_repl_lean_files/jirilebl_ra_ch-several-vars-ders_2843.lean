import Mathlib

/-!
Let f : ℝ^n → ℝ be differentiable at x₀. Show that

  ‖∇ f x₀‖ = sup { |Df(x₀) h| : ‖h‖ = 1 }.

Equivalently, the norm of the gradient equals the operator norm of the derivative.
-/

open Set

theorem norm_gradient_eq_sup_unit {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [FiniteDimensional ℝ E] (f : E → ℝ) (x : E) (hf : DifferentiableAt ℝ f x) :
  ‖gradient f x‖ = Sup { |(fderiv ℝ f x : E →L[ℝ] ℝ) v| | v : E, ‖v‖ = 1 } := by sorry
