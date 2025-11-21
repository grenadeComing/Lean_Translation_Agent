import Mathlib

open BigOperators

theorem orthogonal_matrix_columns_orthonormal {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ)
  (hA : (A.transpose * A) = (1 : Matrix (Fin n) (Fin n) ℝ)) :
  ∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0 := by sorry
