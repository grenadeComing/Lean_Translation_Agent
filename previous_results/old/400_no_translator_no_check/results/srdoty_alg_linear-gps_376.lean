import Mathlib

open Matrix
open BigOperators

/--
Let A ∈ O(n) (an n×n real orthogonal matrix). Then the column vectors A_i satisfy
A_i ⋅ A_j = δ_{ij} for all i,j.
-/
theorem orthogonal_matrix_cols_dot {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : Aᵀ * A = (1 : Matrix (Fin n) (Fin n) ℝ)) :
  ∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0 := by sorry
