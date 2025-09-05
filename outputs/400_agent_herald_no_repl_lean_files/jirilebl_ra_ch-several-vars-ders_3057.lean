import Mathlib

variable {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]

/--
If f : X → ℝ has a local minimum at x0 and is Fréchet-differentiable at x0 with derivative f',
then f' = 0 as an element of X →L[ℝ] ℝ.
-/
theorem HasFDerivAt.is_local_min_deriv_eq_zero {f : X → ℝ} {f' : X →L[ℝ] ℝ} {x0 : X}
  (h : HasFDerivAt f f' x0) (hl : IsLocalMin f x0) : f' = 0 := by sorry
