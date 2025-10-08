import Mathlib

open Set

/-- A commutative ring R is a field iff the set of units equals the set of nonzero elements. -/
theorem comm_ring.field_iff_units_eq_nonzero (R : Type _) [CommRing R] :
  IsField R ↔ (Set.range (fun u : Units R => (u : R))) = {x : R | x ≠ 0} := by sorry
