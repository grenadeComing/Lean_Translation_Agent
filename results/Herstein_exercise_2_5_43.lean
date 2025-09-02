import Mathlib

/-- A group of order 9 is abelian. -/
theorem Herstein_exercise_2_5_43 {G : Type _} [Group G] [Fintype G] (h : Fintype.card G = 9) :
  ∀ x y : G, x * y = y * x := by sorry
