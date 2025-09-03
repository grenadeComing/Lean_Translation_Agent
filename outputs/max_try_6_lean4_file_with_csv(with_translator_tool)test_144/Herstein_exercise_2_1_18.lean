import Mathlib

/-- If G is a finite group of even order, there exists a nontrivial element of order 2. -/
theorem herstein_exercise_2_1_18 {G : Type _} [Group G] [Fintype G] (h : 2 ∣ Fintype.card G) :
  ∃ a : G, a ≠ (1 : G) ∧ a = a⁻¹ := by sorry
