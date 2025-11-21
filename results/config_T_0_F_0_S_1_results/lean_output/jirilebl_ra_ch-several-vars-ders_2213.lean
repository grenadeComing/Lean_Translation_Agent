import Mathlib

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

open Matrix

/-- If an n×n matrix has determinant zero then its columns are linearly dependent. -/
theorem det_zero_imp_cols_linear_dependent (A : Matrix n n R) (h : A.det = 0) :
  LinearDependent R (fun j => A.col j) := by sorry

/-- If an n×n matrix has nonzero determinant then its columns are linearly independent. -/
theorem det_ne_zero_imp_cols_linear_independent (A : Matrix n n R) (h : A.det ≠ 0) :
  LinearIndependent R (fun j => A.col j) := by sorry

/-- If an n×n matrix has determinant zero then its rows are linearly dependent. -/
theorem det_zero_imp_rows_linear_dependent (A : Matrix n n R) (h : A.det = 0) :
  LinearDependent R (fun i => A.row i) := by sorry

/-- If an n×n matrix has nonzero determinant then its rows are linearly independent. -/
theorem det_ne_zero_imp_rows_linear_independent (A : Matrix n n R) (h : A.det ≠ 0) :
  LinearIndependent R (fun i => A.row i) := by sorry
