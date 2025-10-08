import Mathlib

/-- Exercise: Let I, J be ideals in a commutative ring R. The residue of any element of I ∩ J
    in R / (I * J) is nilpotent. -/
theorem Artin_exercise_10_4_6 {R : Type _} [CommRing R] (I J : Ideal R) (x : R) (hx : x ∈ I ⊓ J) :
  IsNilpotent (Ideal.Quotient.mk (I * J) x) := by sorry
