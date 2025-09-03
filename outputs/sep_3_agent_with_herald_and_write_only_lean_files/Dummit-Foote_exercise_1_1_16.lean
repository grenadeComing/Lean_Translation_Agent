import Mathlib

/-
Exercise: Let G be a group and x ∈ G. Prove that x^2 = 1 iff |x| = 1 or |x| = 2.
-/

variable {G : Type _} [Group G] (x : G)

theorem Dummit_Foote_exercise_1_1_16 : x ^ 2 = (1 : G) ↔ orderOf x = 1 ∨ orderOf x = 2 := by sorry
