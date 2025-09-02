import Mathlib

/-- An element x of a ring R is called nilpotent if some power of x is zero.
    Prove that if x is nilpotent, then 1 + x is a unit in R. -/

theorem one_add_isUnit_of_isNilpotent {R : Type*} [Ring R] {x : R} (hx : IsNilpotent x) :
  IsUnit (1 + x) := by sorry
