import Mathlib

lemma norm_op_eq_norm_of_scalar_mul {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  (a : E) (A : ℝ →L[ℝ] E) (h : ∀ x : ℝ, A x = x • a) :
  ‖A‖ = ‖a‖ := by sorry
