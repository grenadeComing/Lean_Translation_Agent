import Mathlib

open ContinuousLinearMap

variable {n : ℕ}

/-- Given a fixed vector `a` in R^n (as `EuclideanSpace ℝ (Fin n)`), define the linear map
    A : ℝ →L[ℝ] EuclideanSpace ℝ (Fin n) by A x = x • a. -/
noncomputable def A (a : EuclideanSpace ℝ (Fin n)) : ℝ →L[ℝ] EuclideanSpace ℝ (Fin n) :=
  ContinuousLinearMap.mk (LinearMap.smulRight (LinearMap.id : ℝ →ₗ[ℝ] ℝ) a)

/-- The operator norm of A equals the Euclidean norm of `a`. -/
theorem opNorm_eq_norm (a : EuclideanSpace ℝ (Fin n)) : ‖A a‖ = ‖a‖ := by sorry
