import Mathlib

/-!
# Field iff every nonzero element is a unit

For a ring R, R is a field iff every nonzero element of R is a unit.
-/

theorem field_iff_units_eq_nonzero {R : Type _} : Field R ↔ (∀ x : R, x ≠ 0 ↔ IsUnit x) := by sorry
