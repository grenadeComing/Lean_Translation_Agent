import Mathlib

open Matrix LinearAlgebra

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- For a square matrix A over a commutative ring, the determinant is zero
iff the columns of A are linearly dependent. -/
theorem det_eq_zero_iff_col_lin_dep (A : Matrix n n R) : A.det = 0 ↔ LinearDependent R fun j => A.col j := by sorry

/-- Equivalently: det A ≠ 0 iff the columns of A are linearly independent. -/
theorem det_ne_zero_iff_col_lin_indep (A : Matrix n n R) : A.det ≠ 0 ↔ LinearIndependent R fun j => A.col j := by sorry

/-- The same statements for rows: det A = 0 iff the rows of A are linearly dependent. -/
theorem det_eq_zero_iff_row_lin_dep (A : Matrix n n R) : A.det = 0 ↔ LinearDependent R fun i => A.row i := by sorry

/-- Equivalently: det A ≠ 0 iff the rows of A are linearly independent. -/
theorem det_ne_zero_iff_row_lin_indep (A : Matrix n n R) : A.det ≠ 0 ↔ LinearIndependent R fun i => A.row i := by sorry
