import Mathlib

theorem orthonormal_columns_of_orthogonal (n : Nat) (A : Matrix (Fin n) (Fin n) Real)
  (h : A.transpose ⬝ A = (1 : Matrix (Fin n) (Fin n) Real)) :
  ∀ (i j : Fin n), (∑ (k : Fin n), (A k i) * (A k j)) = if i = j then (1 : Real) else 0 := by sorry
