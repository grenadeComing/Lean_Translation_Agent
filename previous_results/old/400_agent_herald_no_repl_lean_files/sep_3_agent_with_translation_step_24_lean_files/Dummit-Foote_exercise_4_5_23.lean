import Mathlib

/-- If |G| = 462 then G is not simple. -/
theorem Dummit_Foote_exercise_4_5_23 (G : Type*) [Group G] [Finite G] (h : Nat.card G = 462) : ¬ IsSimpleGroup G := by sorry
