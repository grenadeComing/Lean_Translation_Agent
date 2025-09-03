import Mathlib

/-- Given a commutative ring R and a ∈ R, define L(a) = { x : R | x * a = 0 }.
    Show that L(a) is an ideal of R. -/

def L {R : Type*} [CommRing R] (a : R) : Set R := { x | x * a = 0 }

theorem Herstein_exercise_4_3_1 {R : Type*} [CommRing R] (a : R) :
  ∃ I : Ideal R, ∀ x : R, x ∈ I ↔ x * a = 0 := by
  -- The ideal with carrier L(a) exists; proof omitted.
  sorry
