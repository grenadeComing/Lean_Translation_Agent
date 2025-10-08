import Mathlib

/-
Exercise: Prove that if |G| = 462 then G is not simple.
We only state the result here; proof omitted (use := by sorry as requested).
-/

theorem Dummit_Foote_exercise_4_5_23 {G : Type _} [Group G] [Fintype G]
  (h : Fintype.card G = 462) : ¬ IsSimpleGroup G := by sorry
