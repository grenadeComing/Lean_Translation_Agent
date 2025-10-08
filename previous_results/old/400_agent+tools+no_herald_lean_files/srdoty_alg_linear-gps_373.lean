import Mathlib

/-!
Let A ∈ O(n) with column vectors A_1,...,A_n ∈ ℝ^n. Show that A_iᵀ A_j = δ_{ij} for all 1 ≤ i,j ≤ n.
This is expressed here for a real n×n matrix A with A.transpose * A = 1: the columns are orthonormal.
-/

theorem srdoty_alg_linear_gps_373 {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : A.transpose * A = (1 : Matrix (Fin n) (Fin n) ℝ)) :
  ∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = (if i = j then (1 : ℝ) else 0) := by sorry
