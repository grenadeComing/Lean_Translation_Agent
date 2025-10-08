import Mathlib

open Matrix

universe u

variable {R : Type u} [CommRing R]
variable {n : Type u} [Fintype n] [DecidableEq n]

/-- Swapping two columns multiplies the determinant by -1. -/
theorem det_swap_cols (A : Matrix n n R) (j k : n) :
  det (A.reindex (Equiv.refl n) (Equiv.swap j k)) = - det A := by sorry

/-- Swapping two rows multiplies the determinant by -1. -/
theorem det_swap_rows (A : Matrix n n R) (j k : n) :
  det (A.reindex (Equiv.swap j k) (Equiv.refl n)) = - det A := by sorry

/-- If a matrix has two equal rows then its determinant is zero. -/
theorem det_eq_zero_of_row_eq (A : Matrix n n R) {i j : n} (h : i ≠ j)
  (heq : ∀ k, A i k = A j k) : det A = 0 := by sorry

/-- If a matrix has two equal columns then its determinant is zero. -/
theorem det_eq_zero_of_col_eq (A : Matrix n n R) {i j : n} (h : i ≠ j)
  (heq : ∀ k, A k i = A k j) : det A = 0 := by sorry
