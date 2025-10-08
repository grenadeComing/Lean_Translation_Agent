import Mathlib

/-- Suppose A : ℝ →L[ℝ] E is the continuous linear map given by A x = x • a for a fixed a : E,
where E is a normed real vector space (e.g., E = ℝ^n with the Euclidean norm).
Then the operator norm of A equals the norm of a: ‖A‖ = ‖a‖. -/
theorem op_norm_of_scalar_mul {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  (a : E) (A : ℝ →L[ℝ] E) (h : ∀ x : ℝ, A x = x • a) : ‖A‖ = ‖a‖ := by sorry
