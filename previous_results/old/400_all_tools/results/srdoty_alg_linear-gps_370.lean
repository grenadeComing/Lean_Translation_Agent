import Mathlib

/-!
Suppose A ∈ O(n) is written as a matrix of column vectors A = [A_1 | A_2 | ... | A_n]
with A_i ∈ ℝ^n. Prove that the columns are orthonormal, i.e. for a real n×n matrix A
with Aᵀ ⬝ A = I, show that for all i j in Fin n,
  ∑ k, A k i * A k j = if i = j then 1 else 0.
-/

theorem orthonormal_columns_of_transpose_mul_self {n : Type _} [Fintype n] [DecidableEq n]
  (A : Matrix n n ℝ) (h : Aᵀ ⬝ A = 1) :
  ∀ i j, (Finset.univ.sum fun k : n => A k i * A k j) = if i = j then 1 else 0 := by sorry
