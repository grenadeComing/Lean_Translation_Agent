import Mathlib

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n]
variable {R : Type*} [CommRing R]

/-- The orthogonal group as a subset of the units of n×n matrices over R. -/
def orthogonal_group : Set (Units (Matrix n n R)) :=
  { u | u.valᵀ * u.val = (1 : Matrix n n R) }

/-- The special orthogonal group SO(n,R) = {A ∈ O(n,R) | det A = 1} as a subset of units. -/
def special_orthogonal_group : Set (Units (Matrix n n R)) :=
  { u | u.valᵀ * u.val = (1 : Matrix n n R) ∧ Matrix.det (u.val) = (1 : R) }

/-- SO(n,R) is a (matrix) subgroup of the units of n×n matrices over R. -/
theorem special_orthogonal_group_is_subgroup : IsSubgroup (special_orthogonal_group) := by sorry