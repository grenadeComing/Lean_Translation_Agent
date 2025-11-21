import Mathlib

variable {R : Type _} [CommRing R] {n : Type _} [Fintype n] [DecidableEq n]

open Matrix

/-- The set D(n) of diagonal invertible matrices (viewed as units of the matrix algebra). -/
def diagonal_units : Set (Units (Matrix n n R)) := { u | ∀ i j, i ≠ j → (↑u : Matrix n n R) i j = 0 }

/-- D(n) is a subgroup of GL(n,R) (the group of units of the matrix algebra). -/
theorem diagonal_units_is_subgroup : IsSubgroup (diagonal_units : Set (Units (Matrix n n R))) := by sorry