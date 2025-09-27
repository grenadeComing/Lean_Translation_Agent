import Mathlib

open Ideal Polynomial

/- Exercise 10.2.4 (Artin): In the ring Z[x], (2) ∩ (x) = (2x). -/

theorem Artin_exercise_10_2_4 :
  (ideal.span ({Polynomial.C (2 : ℤ)} : Set (Polynomial ℤ))) ⊓ (ideal.span ({Polynomial.X} : Set (Polynomial ℤ)))
    = ideal.span ({Polynomial.C (2 : ℤ) * Polynomial.X} : Set (Polynomial ℤ)) := by sorry
