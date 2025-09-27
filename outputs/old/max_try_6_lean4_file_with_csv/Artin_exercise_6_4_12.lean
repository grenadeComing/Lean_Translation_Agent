import Mathlib

/-- Artin, Algebra. Exercise 6.4.12:
    There is no simple group of order 224. -/
theorem Artin_exercise_6_4_12 (G : Type _) [Group G] [Fintype G] (h : Fintype.card G = 224) : ¬ IsSimpleGroup G := by sorry
