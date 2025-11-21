import Mathlib

open Matrix

/-- If A ∈ O(n) (i.e. Aᵀ * A = I) and A is written columnwise as A = [A_1 | ... | A_n],
then the columns are orthonormal: for all i, j, ∑_k A_{k i} A_{k j} = δ_{ij}. -/
theorem orthonormal_cols_of_orthogonal_matrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : A.transpose ⬝ A = 1) :
  ∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0 := by sorry