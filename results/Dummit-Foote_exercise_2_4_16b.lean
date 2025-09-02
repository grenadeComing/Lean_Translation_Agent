import Mathlib

variable {G : Type _} [Group G] [Fintype G]

/-- If a subgroup H has index 2 in a finite group G, then H is maximal: any subgroup K with H ≤ K ≤ G
    is either H or the whole group. -/
theorem subgroup_index_two_maximal (H : Subgroup G) [Fintype (↥H)]
  (h_index : Fintype.card G = 2 * Fintype.card (↥H)) :
  ∀ K : Subgroup G, H ≤ K → (K = H ∨ K = (⊤ : Subgroup G)) := by sorry
