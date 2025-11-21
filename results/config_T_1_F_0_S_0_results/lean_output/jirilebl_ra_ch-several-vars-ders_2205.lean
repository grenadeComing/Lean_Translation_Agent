import Mathlib

open Matrix Equiv

variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- If A' is obtained from A by swapping columns j and k, then det A' = - det A. -/
theorem det_swap_columns (j k : n) (A : Matrix n n R) :
  Matrix.det (A.reindex (Equiv.refl n) (Equiv.swap j k)) = - Matrix.det A := by sorry

/-- If A' is obtained from A by swapping rows j and k, then det A' = - det A. -/
theorem det_swap_rows (j k : n) (A : Matrix n n R) :
  Matrix.det (A.reindex (Equiv.swap j k) (Equiv.refl n)) = - Matrix.det A := by sorry

/-- If two rows of A are equal then det A = 0. -/
theorem det_of_equal_rows (i j : n) (A : Matrix n n R) (h : A i = A j) :
  Matrix.det A = 0 := by sorry

/-- If two columns of A are equal then det A = 0. -/
theorem det_of_equal_cols (i j : n) (A : Matrix n n R) (h : ∀ r, A r i = A r j) :
  Matrix.det A = 0 := by sorry
