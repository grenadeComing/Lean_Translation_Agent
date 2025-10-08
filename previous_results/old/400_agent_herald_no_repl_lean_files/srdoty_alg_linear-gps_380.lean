import Mathlib

theorem orthogonal_matrix_columns_orthonormal_basis {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : Aᵀ ⬝ A = 1) :
  (∀ i j : Fin n, ∑ (k : Fin n), A k i * A k j = if i = j then 1 else 0) ∧
  LinearIndependent ℝ (fun i => A.col i) ∧
  Submodule.span ℝ (Set.range fun i => A.col i) = ⊤ := by sorry
