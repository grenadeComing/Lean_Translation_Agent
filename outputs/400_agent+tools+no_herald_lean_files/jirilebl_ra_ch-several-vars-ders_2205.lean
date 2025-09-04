import Mathlib

open Matrix

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- Swap two columns j and k of a matrix. -/
def swap_cols (A : Matrix n n R) (j k : n) : Matrix n n R :=
  fun i l => if l = j then A i k else if l = k then A i j else A i l

/-- Swap two rows j and k of a matrix. -/
def swap_rows (A : Matrix n n R) (j k : n) : Matrix n n R :=
  fun i l => if i = j then A k l else if i = k then A j l else A i l

/-- Determinant changes sign when swapping two distinct columns. -/
theorem det_swap_cols (A : Matrix n n R) {j k : n} (h : j ≠ k) :
  Matrix.det (swap_cols A j k) = - Matrix.det A := by sorry

/-- Determinant changes sign when swapping two distinct rows. -/
theorem det_swap_rows (A : Matrix n n R) {j k : n} (h : j ≠ k) :
  Matrix.det (swap_rows A j k) = - Matrix.det A := by sorry

/-- If two rows of a matrix are equal, the determinant is zero. -/
theorem det_zero_of_row_eq (A : Matrix n n R) {j k : n} (h : j ≠ k)
  (heq : ∀ l, A j l = A k l) : Matrix.det A = 0 := by sorry

/-- If two columns of a matrix are equal, the determinant is zero. -/
theorem det_zero_of_col_eq (A : Matrix n n R) {j k : n} (h : j ≠ k)
  (heq : ∀ i, A i j = A i k) : Matrix.det A = 0 := by sorry
