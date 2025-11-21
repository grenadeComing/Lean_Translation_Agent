import Mathlib

theorem field_iff_units_eq_nonzero {R : Type _} [CommRing R] :
  IsField R ↔ {x : R | IsUnit x} = {x : R | x ≠ 0} := by sorry
