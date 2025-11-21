import Mathlib

open Matrix

/-- If A' is obtained from A by swapping columns j and k (j ≠ k), then det A' = - det A. -/
theorem det_swap_columns {n : Type _} [DecidableEq n] [Fintype n] {R : Type _} [CommRing R]
  (A : Matrix n n R) (j k : n) (h : j ≠ k) :
  Matrix.det (fun i l => if l = j then A i k else if l = k then A i j else A i l) = - Matrix.det A := by sorry

/-- If A' is obtained from A by swapping rows j and k (j ≠ k), then det A' = - det A. -/
theorem det_swap_rows {n : Type _} [DecidableEq n] [Fintype n] {R : Type _} [CommRing R]
  (A : Matrix n n R) (j k : n) (h : j ≠ k) :
  Matrix.det (fun i l => if i = j then A k l else if i = k then A j l else A i l) = - Matrix.det A := by sorry

/-- If A has two equal columns j ≠ k, then det A = 0. -/
theorem det_eq_zero_of_equal_columns {n : Type _} [DecidableEq n] [Fintype n] {R : Type _} [CommRing R]
  (A : Matrix n n R) (j k : n) (h : j ≠ k) (heq : ∀ i, A i j = A i k) :
  Matrix.det A = 0 := by sorry

/-- If A has two equal rows j ≠ k, then det A = 0. -/
theorem det_eq_zero_of_equal_rows {n : Type _} [DecidableEq n] [Fintype n] {R : Type _} [CommRing R]
  (A : Matrix n n R) (j k : n) (h : j ≠ k) (heq : ∀ l, A j l = A k l) :
  Matrix.det A = 0 := by sorry
