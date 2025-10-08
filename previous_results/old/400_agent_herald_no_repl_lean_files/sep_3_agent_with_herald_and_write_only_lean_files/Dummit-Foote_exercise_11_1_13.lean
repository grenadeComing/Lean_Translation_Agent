import Mathlib

/-- As vector spaces over ℚ, ℝ^n ≃ ℝ for all n ≥ 1. -/
theorem real_pow_eq_real_as_Q_vector_spaces (n : ℕ) (hn : 0 < n) :
  Nonempty (ℝ ≃ₗ[ℚ] (Fin n → ℝ)) := by sorry
