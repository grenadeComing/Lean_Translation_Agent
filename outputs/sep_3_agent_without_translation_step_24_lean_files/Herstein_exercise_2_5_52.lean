import Mathlib

open Finset

variable {G : Type*} [Group G] [Fintype G] [DecidableEq G]

theorem herstein_exercise_2_5_52 (φ : G ≃* G)
  (h : 4 * (Finset.univ.filter fun (g : G) => φ g = g⁻¹).card > 3 * (Finset.univ : Finset G).card) :
  (∀ y : G, φ y = y⁻¹) ∧ (∀ a b : G, a * b = b * a) := by sorry
