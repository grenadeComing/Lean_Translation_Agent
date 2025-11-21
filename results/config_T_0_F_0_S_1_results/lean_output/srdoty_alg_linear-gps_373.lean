import Mathlib

open Matrix

variable {n : ℕ}

-- Let A ∈ O(n) (an orthogonal real n×n matrix) with column vectors A_1, …, A_n.
-- Then the columns are orthonormal: A_i^T A_j = δ_{ij} for all i, j.

theorem orthogonal_matrix_columns_inner_eq_delta (A : Matrix (Fin n) (Fin n) ℝ)
  (hA : Aᵀ ⬝ A = 1) :
  ∀ i j : Fin n, (Aᵀ ⬝ A) i j = (if i = j then 1 else 0 : ℝ) := by sorry