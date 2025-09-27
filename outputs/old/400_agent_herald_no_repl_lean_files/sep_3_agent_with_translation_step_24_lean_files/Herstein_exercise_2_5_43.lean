import Mathlib

/-- A group of order 9 is abelian. -/
theorem Herstein_exercise_2_5_43 (G : Type*) [Group G] [Fintype G] :
  Fintype.card G = 9 → ∀ a b : G, a * b = b * a := by sorry
