import Mathlib

open Set

theorem Herstein_exercise_2_10_1 {G : Type*} [Group G] (A : Subgroup G)
  (hN : ∀ g x, x ∈ A → g * x * g⁻¹ ∈ A)
  {b : G} {p : ℕ} (hp : p.Prime) (horder : orderOf b = p) (hnot : b ∉ A) :
  (A : Set G) ∩ Subgroup.closure (Set.singleton b) = Set.singleton (1 : G) := by sorry
