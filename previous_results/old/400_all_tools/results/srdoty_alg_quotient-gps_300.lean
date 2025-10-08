import Mathlib

variable {G : Type _} [Group G]

/-- If H is the unique subgroup of G of its finite order, then H is normal. -/
lemma unique_subgroup_of_card_normal (H : Subgroup G) [Fintype H]
  (huniq : ∀ (K : Subgroup G) [Fintype K], Fintype.card K = Fintype.card H → K = H) :
  ∀ g : G, ∀ h : H, (g * (h : G) * g⁻¹ : G) ∈ (H : Set G) := by sorry
