import Mathlib

open Polynomial

/-- In Z[x], (2) ∩ (x) = (2 x). -/
theorem Artin_exercise_10_2_4 :
  (Ideal.span ({C (2 : Int)} : Set (Polynomial Int))) ⊓ (Ideal.span ({X} : Set (Polynomial Int)))
    = Ideal.span ({C (2 : Int) * X} : Set (Polynomial Int)) := by sorry
