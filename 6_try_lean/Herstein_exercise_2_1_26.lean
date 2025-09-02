import Mathlib

/-- If G is a finite group and a ∈ G, there exists a positive integer n (depending on a) such that a^n = 1. -/
theorem Herstein_exercise_2_1_26 {G : Type _} [Group G] [Fintype G] (a : G) :
  ∃ n : ℕ, 0 < n ∧ a ^ n = (1 : G) := by sorry
