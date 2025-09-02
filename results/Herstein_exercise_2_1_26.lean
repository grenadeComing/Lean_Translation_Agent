import Mathlib

/-
If G is a finite group, prove that, given a ∈ G, there is a positive integer n (depending on a)
such that a^n = e.
-/

theorem herstein_exercise_2_1_26 {G : Type _} [Group G] [Fintype G] (a : G) :
  ∃ n : ℕ, n > 0 ∧ a ^ n = 1 := by sorry
