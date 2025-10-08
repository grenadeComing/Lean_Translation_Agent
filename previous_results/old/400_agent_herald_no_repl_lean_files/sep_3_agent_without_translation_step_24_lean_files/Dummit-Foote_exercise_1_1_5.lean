import Mathlib

/-!
Exercise: Prove that for all n > 1, ZMod n is not a group under multiplication of residue classes.
We formalize the failure of the multiplicative structure to be a group by showing
that not every element of ZMod n is a unit when n > 1 (in particular 0 is not a unit).
-/

theorem Dummit_Foote_exercise_1_1_5 (n : ℕ) (hn : 1 < n) : ¬(∀ x : ZMod n, IsUnit x) := by sorry
