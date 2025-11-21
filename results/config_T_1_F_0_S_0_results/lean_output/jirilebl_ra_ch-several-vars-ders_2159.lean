import Mathlib

/-- Suppose A : ℝ →L[ℝ] EuclideanSpace ℝ (Fin n) is defined by A x = x • a for a fixed a.
    Then the operator norm of A equals the Euclidean norm of a: ‖A‖ = ‖a‖. -/
theorem operator_norm_smul_eq_norm {n : ℕ} (a : EuclideanSpace ℝ (Fin n))
  (A : ℝ →L[ℝ] EuclideanSpace ℝ (Fin n)) (h : ∀ x : ℝ, A x = x • a) :
  ‖A‖ = ‖a‖ := by sorry