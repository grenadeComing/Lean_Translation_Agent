import Mathlib

/-- If |G| = 132 then G is not simple. -/
theorem Dummit_Foote_exercise_4_5_22 {G : Type _} [Group G] [Fintype G]
  (h : Fintype.card G = 132) : ¬IsSimpleGroup G := by sorry
