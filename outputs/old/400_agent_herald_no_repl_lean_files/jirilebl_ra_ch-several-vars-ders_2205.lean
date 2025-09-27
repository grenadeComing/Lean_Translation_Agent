import Mathlib

open Classical
open Matrix

-- We work with square matrices indexed by `Fin n` over a commutative ring `R`.

variable {R : Type _} [CommRing R]
variable {n : Nat}

/-- Swap columns `j` and `k` of a matrix `A`. -/
def swap_cols_matrix (A : Matrix (Fin n) (Fin n) R) (j k : Fin n) : Matrix (Fin n) (Fin n) R :=
  fun i c => if c = j then A i k else if c = k then A i j else A i c

/-- Swap rows `j` and `k` of a matrix `A`. -/
def swap_rows_matrix (A : Matrix (Fin n) (Fin n) R) (j k : Fin n) : Matrix (Fin n) (Fin n) R :=
  fun r c => if r = j then A k c else if r = k then A j c else A r c

/-- If `A'` is obtained from `A` by switching two distinct columns, then
    det A' = - det A. -/
theorem det_swap_columns (A : Matrix (Fin n) (Fin n) R) (j k : Fin n) (hjk : j ≠ k) :
  det (swap_cols_matrix A j k) = - det A := by sorry

/-- If `A'` is obtained from `A` by switching two distinct rows, then
    det A' = - det A. -/
theorem det_swap_rows (A : Matrix (Fin n) (Fin n) R) (j k : Fin n) (hjk : j ≠ k) :
  det (swap_rows_matrix A j k) = - det A := by sorry

/-- If a matrix has two equal columns, then its determinant is zero. -/
theorem det_eq_zero_of_equal_columns (A : Matrix (Fin n) (Fin n) R) (j k : Fin n)
  (h : (fun i => A i j) = fun i => A i k) :
  det A = 0 := by sorry

/-- If a matrix has two equal rows, then its determinant is zero. -/
theorem det_eq_zero_of_equal_rows (A : Matrix (Fin n) (Fin n) R) (j k : Fin n)
  (h : (fun i => A j i) = fun i => A k i) :
  det A = 0 := by sorry
