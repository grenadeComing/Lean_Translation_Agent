import Mathlib

open Matrix BigOperators

variable {n : Nat}

theorem orthogonal_matrix_columns (A : Matrix (Fin n) (Fin n) ℝ) (h : A.transpose * A = 1) :
  ∀ i j : Fin n, ∑ k : Fin n, A k i * A k j = if i = j then 1 else 0 := by sorry
