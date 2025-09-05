import Mathlib

/-- Suppose A : ℝ →L[ℝ] E is defined by A x = x • a. Then the operator norm of A equals ‖a‖. -/
theorem operator_norm_eq_norm_of_smul {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  (a : E) (A : ℝ →L[ℝ] E) (h : ∀ x : ℝ, A x = x • a) : A.opNorm = ‖a‖ := by sorry
