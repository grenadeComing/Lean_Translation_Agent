import Mathlib

/-!
Let f : R^n → R be differentiable at x0. Show that ‖∇ f(x0)‖ = sup { |Df(x0) h| : ‖h‖ = 1 }.
This file states the lemma in a form suitable for a finite-dimensional real inner product space.
-/

open ContinuousLinearMap Set

variable {E : Type _}

lemma grad_norm_eq_opnorm {E : Type _} [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
  (f : E → ℝ) {x0 : E} (hd : DifferentiableAt ℝ f x0) :
  -- there exists a vector `g` representing the derivative by the Riesz representation,
  -- and its norm equals the operator norm (supremum on the unit sphere) of the derivative.
  ∃ g : E, HasFDerivAt f (ContinuousLinearMap.mkInner g) x0 ∧
    ‖g‖ = ‖(fderiv ℝ f x0 : E →L[ℝ] ℝ)‖ ∧
    ‖g‖ = Sup (Set.image (fun h : E => |(fderiv ℝ f x0) h|) {h : E | ‖h‖ = 1}) := by sorry