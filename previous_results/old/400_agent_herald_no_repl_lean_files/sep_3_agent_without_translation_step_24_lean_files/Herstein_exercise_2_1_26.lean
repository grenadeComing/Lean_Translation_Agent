import Mathlib

/-!
Exercise: If G is a finite group, prove that, given a ∈ G, there is a positive integer n,
depending on a, such that a^n = e.
-/

theorem Herstein_exercise_2_1_26 {G : Type*} [Group G] [Fintype G] (a : G) :
  ∃ n : ℕ, a ^ n = (1 : G) := by sorry
