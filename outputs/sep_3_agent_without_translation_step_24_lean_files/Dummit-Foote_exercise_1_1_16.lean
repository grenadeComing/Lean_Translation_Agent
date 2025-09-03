import Mathlib

universe u

/--
Let x be an element of G. Prove that x^2 = 1 iff |x| is either 1 or 2.
This file only states the lemma; proof omitted (sorry).
-/
theorem Dummit_Foote_exercise_1_1_16 {G : Type u} [Group G] (x : G) :
  x ^ 2 = 1 ↔ orderOf x = 1 ∨ orderOf x = 2 := by sorry
