import Mathlib

/-- If H is a subgroup of order n in a group G and H is the only subgroup of order n,
then H is normal in G. (Statement only, no proof.) -/
theorem unique_subgroup_of_card_normal {G : Type _} [Group G] {n : Nat} {H : Subgroup G}
  [Fintype H]
  (h_card : Fintype.card H = n)
  (h_unique : ∀ (K : Subgroup G) [Fintype K], Fintype.card K = n → K = H) :
  ∀ g h : G, h ∈ H → g * h * g⁻¹ ∈ H := by sorry