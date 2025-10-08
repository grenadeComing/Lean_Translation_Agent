import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem mean_value_inequality {U : Set E} (hU : Convex ℝ U) {f : E → ℝ} (hf : ContDiffOn ℝ 1 f U)
  {M : ℝ} (hM : ∀ x ∈ U, ‖(fderiv ℝ f x : E →L[ℝ] ℝ)‖ ≤ M) {x y : E} (hx : x ∈ U) (hy : y ∈ U) :
  |f y - f x| ≤ M * ‖y - x‖ := by sorry
