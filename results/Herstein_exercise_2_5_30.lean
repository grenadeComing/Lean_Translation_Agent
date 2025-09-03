import Mathlib

open Set

theorem Herstein_exercise_2_5_30 {G : Type _} [Group G] [Fintype G]
  {p m : Nat} (hp : Nat.Prime p) (hcard : Fintype.card G = p * m) (hnot : ¬ p ∣ m)
  (H : Subgroup G) [Fintype H] (hH_card : Fintype.card H = p) :
  ∀ (φ : G ≃* G), (φ '' (H : Set G)) = (H : Set G) := by sorry
