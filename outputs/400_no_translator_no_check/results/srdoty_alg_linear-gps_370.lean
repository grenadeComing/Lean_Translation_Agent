import Mathlib

open Matrix

-- Suppose A ∈ O(n) is written as a matrix of column vectors A = [A_1 | A_2 | ... | A_n]
-- with A_i ∈ ℝ^n. We prove that the columns are orthonormal, i.e.
-- for all i, j, sum_k A_{k i} * A_{k j} = if i = j then 1 else 0.

theorem orthogonal_columns (n : Nat) (A : Matrix (Fin n) (Fin n) ℝ) (h : A.transpose * A = 1) :
  ∀ i j : Fin n, ∑ k : Fin n, A k i * A k j = if i = j then 1 else 0 := by
  sorry
