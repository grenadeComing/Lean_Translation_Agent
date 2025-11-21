import Mathlib

theorem commring_field_iff_units_eq {R : Type _} [CommRing R] :
  Field R ↔ Set.range (coe : Units R → R) = {x : R | x ≠ 0} := by sorry
