import Mathlib

/- If a group G has no proper subgroups, prove that G is cyclic of order p, where p is a prime number. -/

open Subgroup

theorem Herstein_exercise_2_3_16 {G : Type*} [Group G]
  (h : ∀ H : Subgroup G, H = (⊥ : Subgroup G) ∨ H = (⊤ : Subgroup G))
  (hne : (⊥ : Subgroup G) ≠ (⊤ : Subgroup G)) :
  ∃ (p : ℕ) (hp : Nat.Prime p) (g : G), Subgroup.closure ({g} : Set G) = (⊤ : Subgroup G) ∧ (orderOf g) = p := by sorry
