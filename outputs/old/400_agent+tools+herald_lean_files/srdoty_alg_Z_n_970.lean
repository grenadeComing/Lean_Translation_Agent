import Mathlib

open Set

/-!
Prove that a commutative ring R is a field iff the set of units equals R \ {0}.
We state the equivalence using IsField and the predicate IsUnit.
-/

theorem isField_iff_units_eq_nonzero (R : Type _) [CommRing R] :
  IsField R ↔ ({x : R | IsUnit x} = {x : R | x ≠ 0}) := by sorry
