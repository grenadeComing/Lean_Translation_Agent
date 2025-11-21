import Mathlib

/--
Let A ∈ O(n) with column vectors A_1, …, A_n ∈ ℝ^n.
Then the columns are orthonormal: for all i, j,
∑_{k=1}^n A_{k i} * A_{k j} = δ_{ij} (which is 1 if i = j and 0 otherwise).
-/
theorem orthogonal_matrix_columns_orthonormal {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (hA : A.transpose ⬝ A = 1) :
  ∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0 := by sorry
