import Mathlib

theorem Herstein_exercise_2_5_52 {G : Type _} [Group G] [Fintype G] (φ : G ≃* G)
  (h : 4 * ((Fintype.elems (G)).filter fun x => φ x = x⁻¹).card > 3 * Fintype.card G) :
  (∀ y : G, φ y = y⁻¹) ∧ (∀ a b : G, a * b = b * a) := by
  sorry
