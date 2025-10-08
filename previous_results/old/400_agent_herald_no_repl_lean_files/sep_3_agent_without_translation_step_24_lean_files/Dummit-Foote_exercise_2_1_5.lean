import Mathlib

lemma Dummit_Foote_exercise_2_1_5 {G : Type*} [Group G] [Fintype G]
  (H : Subgroup G) [Fintype H] (h : Fintype.card G > 2) :
  Fintype.card H ≠ Fintype.card G - 1 := by sorry
