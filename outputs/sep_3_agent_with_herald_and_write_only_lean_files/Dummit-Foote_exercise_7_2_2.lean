import Mathlib

variable {R : Type _} [CommRing R]

theorem Dummit_Foote_exercise_7_2_2 (p : Polynomial R) :
  (∃ q : Polynomial R, q ≠ 0 ∧ p * q = 0) ↔ (∃ b : R, b ≠ 0 ∧ Polynomial.C b * p = 0) := by sorry
