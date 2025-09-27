import Mathlib

open Matrix

theorem orthogonal_matrix_columns_orthonormal_basis (n : Nat)
  [InnerProductSpace ℝ (Fin n → ℝ)]
  (A : Matrix (Fin n) (Fin n) ℝ)
  (h : Aᵀ * A = 1) :
  Orthonormal ℝ (fun i => A.col i) ∧ (Submodule.span ℝ (Set.range (fun i => A.col i)) = ⊤) := by sorry
