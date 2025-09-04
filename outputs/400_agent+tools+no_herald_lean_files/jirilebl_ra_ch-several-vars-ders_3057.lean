import Mathlib

variable {X : Type _} [NormedAddCommGroup X] [NormedSpace ℝ X]
variable {f : X → ℝ} {x0 : X}

theorem fderiv_eq_zero_of_local_min (hf : HasFDerivAt f (fderiv ℝ f x0) x0) (h : IsLocalMin f x0) :
  (fderiv ℝ f x0 : X →L[ℝ] ℝ) = 0 := by sorry
