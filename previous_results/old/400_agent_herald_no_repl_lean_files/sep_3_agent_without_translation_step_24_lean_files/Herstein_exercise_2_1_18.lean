import Mathlib

/-- If G is a finite group of even order, there must be an element a ≠ 1 such that a = a^{-1}. -/
theorem herstein_exercise_2_1_18 {G : Type _} [Group G] [Fintype G]
  (h : (Fintype.card G) % 2 = 0) :
  ∃ a : G, a ≠ (1 : G) ∧ a = a⁻¹ := by
  sorry
