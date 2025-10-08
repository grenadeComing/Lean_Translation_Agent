import Mathlib

variable {R : Type _} [CommRing R]
variable {n : Type _} [DecidableEq n] [Fintype n]

/-- Swap columns j and k of a square matrix A. -/
def swap_cols (A : Matrix n n R) (j k : n) : Matrix n n R :=
  (Matrix.reindex (Equiv.refl n) (Equiv.swap j k)).toFun A

/-- Swap rows i and j of a square matrix A. -/
def swap_rows (A : Matrix n n R) (i j : n) : Matrix n n R :=
  (Matrix.reindex (Equiv.swap i j) (Equiv.refl n)).toFun A

/-- Determinant changes sign when two distinct columns are swapped. -/
theorem det_swap_cols {A : Matrix n n R} {j k : n} (hj : j ≠ k) :
  Matrix.det (swap_cols A j k) = - Matrix.det A := by sorry

/-- Determinant changes sign when two distinct rows are swapped. -/
theorem det_swap_rows {A : Matrix n n R} {i j : n} (hi : i ≠ j) :
  Matrix.det (swap_rows A i j) = - Matrix.det A := by sorry

/-- If two rows of a matrix are equal, its determinant is zero. -/
theorem det_eq_zero_of_row_eq {A : Matrix n n R} {i j : n} (hi : i ≠ j)
  (h : Matrix.row A i = Matrix.row A j) : Matrix.det A = 0 := by sorry

/-- If two columns of a matrix are equal, its determinant is zero. -/
theorem det_eq_zero_of_col_eq {A : Matrix n n R} {i j : n} (hi : i ≠ j)
  (h : Matrix.col A i = Matrix.col A j) : Matrix.det A = 0 := by sorry
