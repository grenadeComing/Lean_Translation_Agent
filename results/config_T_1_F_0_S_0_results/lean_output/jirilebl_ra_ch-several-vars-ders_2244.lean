import Mathlib

open Matrix

variable {R : Type _} [CommRing R]
variable {n : ℕ}

/-- A matrix is a permutation matrix if each row and each column has exactly one entry equal to 1 and all other entries 0. -/
def IsPermutationMatrix (P : Matrix (Fin n) (Fin n) R) : Prop :=
  (∀ i, ∃ j, P i j = 1 ∧ ∀ j', j' ≠ j → P i j' = 0) ∧
  (∀ j, ∃ i, P i j = 1 ∧ ∀ i', i' ≠ i → P i' j = 0)

/-- The determinant of a permutation matrix is either 1 or -1. -/
theorem det_perm_matrix_eq_one_or_neg_one (P : Matrix (Fin n) (Fin n) R) (h : IsPermutationMatrix P) :
  P.det = (1 : R) ∨ P.det = (-1 : R) := by sorry