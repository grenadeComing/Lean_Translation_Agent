import Mathlib

/-!
Herstein exercise 4.3.1
If R is a commutative ring and a ∈ R, let L(a) = {x ∈ R | x * a = 0}.
Prove that L(a) is an ideal of R.
-/

variable {R : Type _} [CommRing R]

/-- For a fixed `a : R` the set `L(a) := { x | x * a = 0 }` is an ideal. -/
def Herstein_exercise_4_3_1 (a : R) : Ideal R := by
  -- proof omitted
  sorry
