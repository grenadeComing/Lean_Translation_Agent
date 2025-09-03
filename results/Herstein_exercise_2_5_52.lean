import Mathlib

theorem Herstein_exercise_2_5_52 {G : Type*} [Group G] [Fintype G] [DecidableEq G] (φ : G ≃* G)
  (h : 4 * Fintype.card ({x : G // φ x = x⁻¹}) > 3 * Fintype.card G) :
  (∀ y : G, φ y = y⁻¹) ∧ (∀ a b : G, a * b = b * a) := by sorry
