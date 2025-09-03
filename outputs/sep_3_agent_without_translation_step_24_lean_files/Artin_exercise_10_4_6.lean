import Mathlib

open Ideal

variable {R : Type _} [CommRing R]

/-- Exercise: Let I, J be ideals in a ring R. The residue of any element of I ∩ J in R / I J is nilpotent. -/
theorem Artin_exercise_10_4_6 (I J : Ideal R) {x : R} (hx : x ∈ I ∧ x ∈ J) :
  IsNilpotent (Ideal.Quotient.mk (I * J) x) := by sorry
