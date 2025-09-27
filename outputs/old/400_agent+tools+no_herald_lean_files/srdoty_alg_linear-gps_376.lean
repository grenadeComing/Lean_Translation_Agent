import Mathlib

open BigOperators

variable {n : ℕ}

theorem orthogonal_matrix_columns_dot (A : Matrix (Fin n) (Fin n) ℝ) (h : A.transpose * A = 1) :
  ∀ (i j : Fin n), (∑ k : Fin n, A k i * A k j) = if i = j then (1 : ℝ) else 0 := by
  sorry
