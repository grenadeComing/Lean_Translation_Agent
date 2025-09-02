import Mathlib

/-- If |G| = 6545 then G is not simple. -/
theorem Dummit_Foote_exercise_4_5_19 (G : Type _) [Group G] [Fintype G]
  (h : Fintype.card G = 6545) : ¬IsSimpleGroup G := by sorry
