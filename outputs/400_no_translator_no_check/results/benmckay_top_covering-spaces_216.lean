import Mathlib

/-!
Statement: Take an invertible matrix A with at least one eigenvalue lam satisfying lam > 1
and at least one eigenvalue satisfying mu < -1. Prove that A : ℝ^n → ℝ^n is a covering map.

Translation note: We express this with a linear equivalence A : (Fin n → ℝ) ≃ₗ[ℝ] (Fin n → ℝ)
(and hence invertible). We assume existence of two eigenpairs, one with eigenvalue > 1
and one with eigenvalue < -1. The conclusion is that the underlying map is a covering map
(i.e., `IsCoveringMap` holds). The proof is omitted ("by sorry").
-/

theorem invertible_matrix_with_pos_and_neg_eigenvalues_is_covering
  {n : ℕ} (A : (Fin n → ℝ) ≃ₗ[ℝ] (Fin n → ℝ))
  (hpos : ∃ (lam : ℝ) (v : Fin n → ℝ), lam > 1 ∧ v ≠ 0 ∧ (A v) = lam • v)
  (hneg : ∃ (mu : ℝ) (w : Fin n → ℝ), mu < -1 ∧ w ≠ 0 ∧ (A w) = mu • w) :
  IsCoveringMap (A : (Fin n → ℝ) → (Fin n → ℝ)) := by sorry
