import Mathlib

variable {R : Type _} [CommRing R]
variable {n : Type _} [DecidableEq n] [Fintype n]

/-- Swap two columns of a matrix by exchanging their indices `j` and `k`. -/
def swap_cols (A : Matrix n n R) (j k : n) : Matrix n n R :=
  fun i l => if l = j then A i k else if l = k then A i j else A i l

/-- Swap two rows of a matrix by exchanging their indices `j` and `k`. -/
def swap_rows (A : Matrix n n R) (j k : n) : Matrix n n R :=
  fun l i => if l = j then A k i else if l = k then A j i else A l i

/-- Swapping two distinct columns changes the sign of the determinant. -/
theorem det_swap_cols (A : Matrix n n R) {j k : n} (hj : j ≠ k) :
  Matrix.det (swap_cols A j k) = - Matrix.det A := by sorry

/-- Swapping two distinct rows changes the sign of the determinant. -/
theorem det_swap_rows (A : Matrix n n R) {j k : n} (hj : j ≠ k) :
  Matrix.det (swap_rows A j k) = - Matrix.det A := by sorry

/-- If two distinct rows of a matrix are equal, its determinant is zero. -/
theorem det_eq_zero_of_eq_rows (A : Matrix n n R) {i k : n} (hi : i ≠ k)
  (h : (fun j => A i j) = fun j => A k j) : Matrix.det A = 0 := by sorry

/-- If two distinct columns of a matrix are equal, its determinant is zero. -/
theorem det_eq_zero_of_eq_cols (A : Matrix n n R) {j k : n} (hj : j ≠ k)
  (h : (fun i => A i j) = fun i => A i k) : Matrix.det A = 0 := by sorry
