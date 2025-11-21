import Mathlib

open Matrix

theorem orthogonal_matrix_columns_orthonormal_basis {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : Matrix.transpose A * A = 1) :
  (∀ i j : Fin n, ∑ k : Fin n, A k i * A k j = if i = j then 1 else 0) ∧
    (Submodule.span ℝ (Set.range (fun i : Fin n => A.col i)) = (⊤ : Submodule ℝ (Fin n → ℝ))) := by sorry
