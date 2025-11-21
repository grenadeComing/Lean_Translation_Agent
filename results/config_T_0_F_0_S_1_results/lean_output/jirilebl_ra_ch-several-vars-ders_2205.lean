import Mathlib

open Equiv

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- If A' is obtained from A by swapping columns j and k, then det A' = - det A. -/
theorem det_swap_columns (A : Matrix n n R) {j k : n} (h : j ≠ k) :
  Matrix.det (fun i l => A i (Equiv.swap j k l)) = - Matrix.det A := by sorry

/-- If A' is obtained from A by swapping rows j and k, then det A' = - det A. -/
theorem det_swap_rows (A : Matrix n n R) {j k : n} (h : j ≠ k) :
  Matrix.det (fun i l => A (Equiv.swap j k i) l) = - Matrix.det A := by sorry

/-- If two columns of A are equal, then det A = 0. -/
theorem det_eq_zero_of_two_equal_columns (A : Matrix n n R) {j k : n} (h : ∀ i, A i j = A i k) :
  Matrix.det A = 0 := by sorry

/-- If two rows of A are equal, then det A = 0. -/
theorem det_eq_zero_of_two_equal_rows (A : Matrix n n R) {j k : n} (h : ∀ l, A j l = A k l) :
  Matrix.det A = 0 := by sorry
