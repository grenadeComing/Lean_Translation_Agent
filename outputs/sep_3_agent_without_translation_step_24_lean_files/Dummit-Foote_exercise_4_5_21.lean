import Mathlib

/--
If |G| = 2907 then G is not simple.
This is a translation of Dummit and Foote exercise 4.5.21.
-/

theorem Dummit_Foote_exercise_4_5_21 {G : Type _} [Group G] [Fintype G]
  (h : Fintype.card G = 2907) : ¬ IsSimpleGroup G := by sorry
