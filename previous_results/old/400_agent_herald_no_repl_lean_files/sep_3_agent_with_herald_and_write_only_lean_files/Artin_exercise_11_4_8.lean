import Mathlib

open Polynomial

/--
Exercise (Artin 11.4.8): Let p be a prime integer and n ≥ 1. Show that the polynomial x^n - p is
irreducible in Q[x].
-/
theorem Artin_exercise_11_4_8 (p : ℕ) (hp : p.Prime) (n : ℕ) (hn : 0 < n) :
  Irreducible (X ^ n - C (p : ℚ)) := by
  -- This follows from Eisenstein's criterion at the prime p.
  sorry
