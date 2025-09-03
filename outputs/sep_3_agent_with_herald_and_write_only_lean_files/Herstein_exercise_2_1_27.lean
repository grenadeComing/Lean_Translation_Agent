import Mathlib

/-!
Exercise: If G is a finite group, prove that there is an integer m > 0 such that a^m = e for all a ∈ G.

We state the result below. The proof is omitted (by `sorry`).
-/

theorem Herstein_exercise_2_1_27 {G : Type*} [Group G] [Fintype G] :
  ∃ m : ℕ, 0 < m ∧ ∀ a : G, a ^ m = (1 : G) := by sorry
