import Mathlib

/-- If a is nilpotent in a commutative ring R (with 1 ≠ 0), then 1 - a * b is a unit for all b. -/
theorem Dummit_Foote_exercise_7_4_27 {R : Type _} [CommRing R] (h1 : (1 : R) ≠ 0) {a b : R} (ha : IsNilpotent a) : IsUnit (1 - a * b) := by
  sorry
