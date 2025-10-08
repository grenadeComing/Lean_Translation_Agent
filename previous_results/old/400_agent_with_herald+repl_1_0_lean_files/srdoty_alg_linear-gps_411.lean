import Mathlib

variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

open Matrix

/-- D1: diagonal matrices in SL(n, R). -/
def D1_set : Set (Matrix n n R) :=
  { A | A.det = 1 ∧ ∀ i j, i ≠ j → A i j = 0 }

/-- D1_units: diagonal matrices in SL(n, R), viewed as units. -/
def D1_units : Set (Units (Matrix n n R)) :=
  { u | (u.val).det = 1 ∧ ∀ i j, i ≠ j → (u.val : Matrix n n R) i j = 0 }

/-- The set D1 of diagonal matrices with determinant 1 is a subgroup of the unit group. -/
def D1_subgroup : Subgroup (Units (Matrix n n R)) := by
  sorry
