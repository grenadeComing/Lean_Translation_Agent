import Mathlib

/--
Let R be a commutative ring with 1 ≠ 0. Prove that if a is a nilpotent element of R then 1 - a b is a unit for all b ∈ R.
This is the Lean translation of the statement (proof omitted).
-/

theorem Dummit_Foote_exercise_7_4_27 {R : Type _} [CommRing R] [Nontrivial R] {a b : R}
  (ha : IsNilpotent a) : IsUnit (1 - a * b) := by
  sorry
