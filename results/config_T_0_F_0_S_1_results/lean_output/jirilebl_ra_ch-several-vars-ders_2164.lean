import Mathlib

/-- Suppose B : L(ℝ^n, ℝ) is given by B(x) = ⟪b, x⟫ (the standard Euclidean inner product with b).
    Then the operator norm of B equals the Euclidean norm of b. -/
lemma operator_norm_of_inner_eq_norm {n : ℕ} (b : EuclideanSpace ℝ (Fin n))
  (B : EuclideanSpace ℝ (Fin n) →L[ℝ] ℝ) (h : ∀ x, B x = ⟪b, x⟫_ℝ) :
  ‖B‖ = ‖b‖ := by sorry