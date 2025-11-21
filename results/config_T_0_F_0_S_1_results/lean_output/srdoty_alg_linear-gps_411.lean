import Mathlib

variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- D1 is the set of diagonal matrices in SL(n, R), realized as a subset of the units of `Matrix n n R`. -/
def D1 : Set (Units (Matrix n n R)) :=
  {U | (∀ i j, i ≠ j → (U.val) i j = 0) ∧ (U.val).det = 1}

/-- The set `D1` of diagonal matrices of determinant 1 is a subgroup of `Units (Matrix n n R)`. -/
theorem d1_is_matrix_group : IsSubgroup (Units (Matrix n n R)) D1 := by sorry
