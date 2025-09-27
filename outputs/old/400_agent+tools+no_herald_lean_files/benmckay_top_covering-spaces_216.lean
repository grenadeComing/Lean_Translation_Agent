import Mathlib

-- An invertible linear map with given eigenvalues is a covering map.
-- We state the theorem assuming an explicit linear equivalence (invertible linear map),
-- eigenvectors with eigenvalues lam>1 and mu<-1, and conclude the underlying map is a covering map.

theorem invertible_matrix_with_pos_and_neg_eigen_is_covering_map {n : ℕ}
  (A : (Fin n → ℝ) ≃ₗ[ℝ] (Fin n → ℝ))
  (lam mu : ℝ) (v w : Fin n → ℝ)
  (hv : v ≠ 0) (hw : w ≠ 0)
  (hA_v : (A.toLinearMap : (Fin n → ℝ) → (Fin n → ℝ)) v = lam • v)
  (hA_w : (A.toLinearMap : (Fin n → ℝ) → (Fin n → ℝ)) w = mu • w)
  (hlam : lam > 1) (hmu : mu < -1) :
  IsCoveringMap (A.toLinearMap : (Fin n → ℝ) → (Fin n → ℝ)) := by
  sorry
