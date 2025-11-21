import Mathlib

variable {n : Type} [Fintype n] [DecidableEq n]

/-- Let `A : Matrix n n ℝ`. If `Aᵀ ⬝ A = 1` (i.e. `A` is orthogonal), then the columns of `A`
    are orthonormal: the inner product (dot product) of column `i` and column `j` equals
    `if i = j then 1 else 0`. -/
theorem orthogonal_matrix_columns_inner (A : Matrix n n ℝ) (h : Aᵀ ⬝ A = 1) :
  ∀ i j : n, ∑ k : n, A k i * A k j = if i = j then 1 else 0 := by sorry

/-- For an orthogonal matrix `A` (satisfying `Aᵀ ⬝ A = 1`), the transpose is a two-sided
    inverse of `A` (hence `A` is invertible and `Aᵀ = A⁻¹`). -/
theorem orthogonal_matrix_transpose_inverse (A : Matrix n n ℝ) (h : Aᵀ ⬝ A = 1) :
  Aᵀ = A⁻¹ := by sorry

/-- Equivalently, the rows of an orthogonal matrix are orthonormal as well; in matrix form
    one has `A ⬝ Aᵀ = 1`. -/
theorem orthogonal_matrix_rows_inner (A : Matrix n n ℝ) (h : Aᵀ ⬝ A = 1) :
  A ⬝ Aᵀ = 1 := by sorry