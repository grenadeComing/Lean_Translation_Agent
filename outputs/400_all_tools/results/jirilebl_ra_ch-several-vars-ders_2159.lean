import Mathlib

/-
A linear map A : ℝ → ℝ^n given by A x = x • a has operator norm equal to the Euclidean norm of a.
We identify ℝ^n with Fin n → ℝ and use the standard euclidean norm coming from the inner product.
-/

open ContinuousLinearMap

/-- The continuous linear map ℝ → (Fin n → ℝ) given by x ↦ x • a. -/
definition scalar_mul_map {n : ℕ} (a : Fin n → ℝ) : ℝ →L[ℝ] (Fin n → ℝ) :=
  (LinearMap.smulRight (LinearMap.id : ℝ →ₗ[ℝ] ℝ) a).toContinuousLinearMap

theorem opNorm_euclidean {n : ℕ} (a : Fin n → ℝ) : (scalar_mul_map a).opNorm = ‖a‖ := by sorry
