import Mathlib

open Set

theorem field_iff_units_eq_nonzero {R : Type*} [CommRing R] : Field R ↔ Set.range (coe : Rˣ → R) = {x : R | x ≠ 0} := by sorry
