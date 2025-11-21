import Mathlib

/-- Let A ∈ O(n) with column vectors A_1,...,A_n ∈ ℝ^n. Then A_i^T A_j = δ_{ij} for all i,j. -/
theorem orthonormal_cols_matrix {n : Type*} [Fintype n] [DecidableEq n] (A : Matrix n n ℝ)
  (h : A.transpose * A = 1 : Matrix n n ℝ) :
  ∀ i j : n, (A.transpose * A) i j = if i = j then 1 else 0 := by sorry