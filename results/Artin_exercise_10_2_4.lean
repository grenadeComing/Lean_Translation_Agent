import Mathlib

/-!
Exercise: In the ring ℤ[x], (2) ∩ (x) = (2x).
-/

open Polynomial Ideal

theorem Artin_exercise_10_2_4 :
  (Ideal.span ({(2 : Polynomial Int)} : Set (Polynomial Int))) ⊓ (Ideal.span ({Polynomial.X} : Set (Polynomial Int))) =
    Ideal.span ({(2 : Polynomial Int) * Polynomial.X} : Set (Polynomial Int)) := by
  sorry
