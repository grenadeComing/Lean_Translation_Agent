import Mathlib

open Subgroup

theorem Herstein_exercise_2_3_16 {G : Type _} [Group G]
  (h : ∀ H : Subgroup G, H = (⊥ : Subgroup G) ∨ H = (⊤ : Subgroup G)) :
  ∃ p : ℕ, Nat.Prime p ∧ ∃ g : G, Subgroup.closure (Set.singleton g) = (⊤ : Subgroup G) ∧ (Fintype G ∧ Fintype.card G = p) := by sorry
