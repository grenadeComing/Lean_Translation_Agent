import Mathlib

variables {α : Type*} [CommRing α]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- If det A = 0 then the columns of A are linearly dependent. -/
theorem matrix.det_zero_columns_linear_dependent {A : Matrix n n α} (h : Matrix.det A = 0) :
  ¬ LinearIndependent α (fun j => A.col j) := by sorry

/-- If det A ≠ 0 then the columns of A are linearly independent. -/
theorem matrix.det_ne_zero_columns_linear_independent {A : Matrix n n α} (h : Matrix.det A ≠ 0) :
  LinearIndependent α (fun j => A.col j) := by sorry

/-- Analogous result for rows: if det A = 0 then the rows are linearly dependent. -/
theorem matrix.det_zero_rows_linear_dependent {A : Matrix n n α} (h : Matrix.det A = 0) :
  ¬ LinearIndependent α (fun i => A.row i) := by sorry

/-- Analogous result for rows: if det A ≠ 0 then the rows are linearly independent. -/
theorem matrix.det_ne_zero_rows_linear_independent {A : Matrix n n α} (h : Matrix.det A ≠ 0) :
  LinearIndependent α (fun i => A.row i) := by sorry
