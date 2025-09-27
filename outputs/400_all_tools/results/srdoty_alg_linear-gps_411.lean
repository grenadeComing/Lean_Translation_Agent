import Mathlib

open Matrix

variable {n : Type _}
variable [Fintype n] [DecidableEq n]
variable {R : Type _} [CommRing R]

/-- A matrix is diagonal if all off-diagonal entries are zero. -/
def is_diagonal (A : Matrix n n R) : Prop := ∀ i j, i ≠ j → A i j = 0

/-- D1(n) = set of diagonal matrices in SL(n), represented as units (invertible matrices). -/
def D1 : Set (Units (Matrix n n R)) := {U | is_diagonal (U.val) ∧ (U.val).det = 1}

/-- D1(n) is a matrix group (a subgroup of the group of units of n×n matrices). -/
def D1_is_subgroup : Subgroup (Units (Matrix n n R)) := by sorry
