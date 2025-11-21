import Mathlib

/-- A commutative ring R is a field iff the set of units equals R \ {0}. -/
theorem is_field_iff_units_eq_nonzero {R : Type*} [CommRing R] :
  IsField R ↔ (Set.range (coe : Rˣ → R) = {x : R | x ≠ 0}) := by sorry