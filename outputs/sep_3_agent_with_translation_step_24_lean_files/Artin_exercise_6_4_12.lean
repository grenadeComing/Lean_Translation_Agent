import Mathlib

/-- No group of order 224 is simple. -/
theorem Artin_exercise_6_4_12 (G : Type*) [Group G] [Fintype G] (h : Fintype.card G = 224) : ¬ IsSimpleGroup G := by sorry
