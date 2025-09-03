import Mathlib

/-!
Dummit and Foote, Exercise 4.5.22:
If |G| = 132 then G is not simple.
-/

theorem Dummit_Foote_exercise_4_5_22 {G : Type*} [Group G] [Fintype G]
  (h : Fintype.card G = 132) : ¬ SimpleGroup G := by sorry
