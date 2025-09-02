import Mathlib

/-- If a group G has no proper subgroups, then G is cyclic of prime order. -/
theorem Herstein_exercise_2_3_16 {G : Type _} [Group G]
  (hne : ∃ x : G, x ≠ 1)
  (hsub : ∀ H : Subgroup G, H = ⊤ ∨ H = ⊥) :
  ∃ (p : ℕ) (hp : p.Prime) (inst : Fintype G), IsCyclic G ∧ Fintype.card G = p := by sorry
