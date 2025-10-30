import Mathlib

/--
Skeleton encoding for the multivariable second-order Taylor expansion:
f(x+h) = f(x) + ∇f(x)·h + 1/2 hᵀ H_f(x) h + o(∥h∥^2)
uniformly on compact subsets of a convex domain U.
This file currently only provides a placeholder proof (sorry).
-/

universes u
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
variable (f : E → ℝ) (U : Set E)
variable hf : DifferentiableOn ℝ f U
variable hU : Convex U

theorem multivar_taylor_second_order_uniform_placeholder
  : True := by
  sorry
