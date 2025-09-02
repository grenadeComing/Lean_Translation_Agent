import Mathlib

/-!
Exercise: Let G be a monoid and x an element of G. Prove that x^2 = 1 if and only if the order of x is 1 or 2.
We state the lemma below; proof omitted (sorry).
-/

theorem Dummit_Foote_exercise_1_1_16 {G : Type _} [Monoid G] (x : G) : x ^ 2 = 1 ↔ orderOf x = 1 ∨ orderOf x = 2 := by sorry
