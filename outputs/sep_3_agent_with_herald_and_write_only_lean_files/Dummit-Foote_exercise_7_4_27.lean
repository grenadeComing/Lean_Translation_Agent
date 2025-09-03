import Mathlib

/-- Let R be a commutative ring with 1 ≠ 0. If a is nilpotent then 1 - a * b is a unit for all b. -/
theorem Dummit_Foote_exercise_7_4_27 {R : Type*} [CommRing R] [Nontrivial R] {a : R}
  (ha : IsNilpotent a) : ∀ b : R, IsUnit (1 - a * b) := by sorry
