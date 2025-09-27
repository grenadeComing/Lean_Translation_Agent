import Mathlib

/-- Herstein, Exercise 2.1.26:
If G is a finite group, then for each a : G there exists n > 0 with a^n = 1. -/
theorem Herstein_exercise_2_1_26 {G : Type _} [Group G] [Fintype G] (a : G) : ∃ n : ℕ, 0 < n ∧ a ^ n = 1 := by sorry
