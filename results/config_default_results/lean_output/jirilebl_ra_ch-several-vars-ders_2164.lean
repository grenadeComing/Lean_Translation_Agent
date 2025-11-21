import Mathlib

/-- Using the standard Euclidean norm on R^n: Suppose B ∈ L(R^n, R) is defined for x ∈ R^n by B x = b ⋅ x for a vector b ∈ R^n. Then the operator norm ||B||_{L(R^n,R)} = ||b||_{R^n}. -/
theorem operator_norm_eq_of_inner {n : ℕ} (b : EuclideanSpace ℝ (Fin n)) (B : EuclideanSpace ℝ (Fin n) →L[ℝ] ℝ)
  (h : ∀ x, B x = @Inner.inner ℝ (EuclideanSpace ℝ (Fin n)) _ b x) : B.opNorm = ‖b‖ := by sorry
