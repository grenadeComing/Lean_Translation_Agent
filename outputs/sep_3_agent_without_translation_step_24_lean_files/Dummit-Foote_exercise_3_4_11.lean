import Mathlib

open Subgroup

theorem Dummit_Foote_exercise_3_4_11 {G : Type*} [Group G] (H : Subgroup G)
  (hH_normal : H.Normal) (hH_nontrivial : H ≠ ⊥) (hG_solvable : IsSolvable G) :
  ∃ A : Subgroup G, A ≠ ⊥ ∧ A ≤ H ∧ A.Normal ∧ (∀ a b : G, a ∈ A → b ∈ A → a * b = b * a) := by sorry
