import Mathlib

/-- Let A ∈ O(n) with column vectors A_1, ..., A_n ∈ ℝ^n. Show that A_i · A_j = δ_{ij} for all 1 ≤ i, j ≤ n, where · denotes the standard dot product on ℝ^n. -/
 theorem dotProduct_column_self_ext {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ) (i j : Fin n) :
     A i j = A.transpose i j := by
  sorry
