import Mathlib

open Matrix

theorem orthogonal_matrix_columns_is_orthonormal_basis {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : Aᵀ ⬝ A = 1) :
  (∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0) ∧
  Submodule.span ℝ (Set.range (fun j => fun i => A i j)) = ⊤ := by sorry