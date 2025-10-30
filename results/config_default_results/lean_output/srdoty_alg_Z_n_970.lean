import Mathlib

/-- A commutative ring R is a field iff every nonzero element is a unit. -/
theorem isField_iff_all_nonzero_isUnit {R : Type*} [CommRing R] : IsField R ↔ (∀ a : R, a ≠ 0 → IsUnit a) := by
  sorry
