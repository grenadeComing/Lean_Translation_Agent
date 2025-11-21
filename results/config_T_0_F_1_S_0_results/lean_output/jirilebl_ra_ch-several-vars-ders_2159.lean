import Mathlib

-- Special case for Euclidean space ℝ^n represented as Fin n → ℝ.

theorem operator_norm_eq_euclidean {n : ℕ} (a : Fin n → ℝ) (A : ℝ →L[ℝ] (Fin n → ℝ))
  (h : ∀ x : ℝ, A x = x • a) : ContinuousLinearMap.opNorm A = ‖a‖ := by sorry
