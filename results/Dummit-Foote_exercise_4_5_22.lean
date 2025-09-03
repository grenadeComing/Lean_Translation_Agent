import Mathlib

/-- Dummit and Foote exercise 4.5.22: If a group has order 132 then it is not simple. -/
theorem Dummit_Foote_exercise_4_5_22 (G : Type*) [Group G] [Fintype G] :
  Fintype.card G = 132 → ¬ IsSimpleGroup G := by sorry
