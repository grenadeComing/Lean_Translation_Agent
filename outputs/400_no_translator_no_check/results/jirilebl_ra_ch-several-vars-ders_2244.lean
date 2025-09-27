import Mathlib

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n]
variable {R : Type*} [CommRing R]

/-- A matrix is a permutation matrix if every entry is 0 or 1 and every row and every column sums to 1. -/
def is_permutation_matrix (P : Matrix n n R) : Prop :=
  (∀ i j, P i j = 0 ∨ P i j = 1) ∧ (∀ i, ∑ j, P i j = 1) ∧ (∀ j, ∑ i, P i j = 1)

/-- The determinant of a permutation matrix is either 1 or -1. -/
theorem det_permutation_matrix_is_sign (P : Matrix n n R) (h : is_permutation_matrix P) :
  P.det = (1 : R) ∨ P.det = (-1 : R) := by sorry
