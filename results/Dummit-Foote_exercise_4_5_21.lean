import Mathlib

/-- If |G| = 2907 then G is not simple. -/
theorem dummit_foote_exercise_4_5_21 (G : Type*) [Group G] [Fintype G] (h : Fintype.card G = 2907) : ¬ IsSimpleGroup G := by sorry
