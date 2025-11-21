import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem fderiv_eq_zero_of_is_local_min {f : E → ℝ} {x0 : E}
  (h_diff : DifferentiableAt ℝ f x0) (h_min : IsLocalMin f x0) :
  fderiv ℝ f x0 = (0 : E →L[ℝ] ℝ) := by sorry
