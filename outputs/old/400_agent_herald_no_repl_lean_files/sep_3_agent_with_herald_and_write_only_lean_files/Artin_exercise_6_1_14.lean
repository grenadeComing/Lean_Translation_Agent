import Mathlib

variable {G : Type _} [Group G]

/-- Let Z be the center of a group G. If G / Z is cyclic then G is abelian and hence G = Z. -/
theorem Artin_exercise_6_1_14 :
  let Z := center G in
  (∃ g : G, ∀ x : G, ∃ n : Int, (QuotientGroup.mk Z x) = (QuotientGroup.mk Z (g ^ n))) →
  (∀ a b : G, a * b = b * a) ∧ (Z = (⊤ : Subgroup G)) := by sorry
