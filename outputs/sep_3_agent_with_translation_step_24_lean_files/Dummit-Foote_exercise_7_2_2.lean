import Mathlib

open Polynomial

/-- Exercise: Let R be a commutative ring and p ∈ R[X].
    Show that p is a zero divisor in R[X] iff there exists nonzero b ∈ R with b • p = 0.
    (Here we view b as the constant polynomial C b.) -/
theorem Dummit_Foote_exercise_7_2_2 {R : Type _} [CommRing R] (p : R[X]) :
  (∃ q : R[X], q ≠ 0 ∧ p * q = 0) ↔ (∃ b : R, b ≠ 0 ∧ C b * p = 0) := by sorry
