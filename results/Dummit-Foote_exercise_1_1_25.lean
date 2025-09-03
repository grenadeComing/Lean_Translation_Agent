import Mathlib

/-!
# Dummit & Foote, Exercise 1.1.25
If every element of a group squares to 1, then the group is abelian.
-/

theorem Dummit_Foote_exercise_1_1_25 {G : Type*} [Group G] (h : ∀ x : G, x * x = 1) : ∀ a b : G, a * b = b * a := by sorry
