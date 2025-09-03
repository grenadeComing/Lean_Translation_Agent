import Mathlib

theorem Herstein_exercise_2_3_16 {G : Type _} [Group G] [Nontrivial G]
  (h : ∀ H : Subgroup G, H = ⊥ ∨ H = ⊤) :
  ∃ (p : ℕ) (fg : Fintype G), Nat.Prime p ∧ IsCyclic G ∧ @Fintype.card G fg = p := by sorry
