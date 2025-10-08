import Mathlib

open Matrix

/-- Let A ∈ O(n) with column vectors A_1, …, A_n ∈ ℝ^n. Show that A_iᵀ A_j = δ_{ij} for all 1 ≤ i, j ≤ n. -/
theorem orthogonal_cols_delta {n : Type _} [Fintype n] [DecidableEq n] (A : Matrix n n Real)
  (h : A.transpose * A = (1 : Matrix n n Real)) (i j : n) : (∑ k : n, A k i * A k j) = if i = j then 1 else 0 := by
  sorry
