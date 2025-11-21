import Mathlib

/-- Let A ∈ O(n) with column vectors A_1,...,A_n ∈ ℝ^n. Then the columns are orthonormal: their
    dot product equals the Kronecker delta. We express this by using the entrywise formula for
    Aᵀ * A. -/
theorem orthogonal_matrix_columns_dot {n : Type*} [Fintype n] [DecidableEq n] (A : Matrix n n ℝ)
  (h : A.transpose * A = 1) (i j : n) :
  (Finset.univ.sum fun k => A k i * A k j) = if i = j then (1 : ℝ) else 0 := by sorry
