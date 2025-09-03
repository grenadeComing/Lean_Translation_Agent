import Mathlib

/--
If a finite nontrivial group G has no proper subgroups (every subgroup is trivial or whole),
then G is cyclic of prime order.
-/
theorem Herstein_exercise_2_3_16 {G : Type*} [Group G] [Fintype G] (h_nontriv : Nontrivial G)
  (h_subs : ∀ H : Subgroup G, H = (⊤ : Subgroup G) ∨ H = (⊥ : Subgroup G)) :
  ∃ (p : ℕ) (hp : Nat.Prime p),
    Fintype.card G = p ∧ ∃ g : G, Subgroup.closure ({g} : Set G) = (⊤ : Subgroup G) := by sorry
