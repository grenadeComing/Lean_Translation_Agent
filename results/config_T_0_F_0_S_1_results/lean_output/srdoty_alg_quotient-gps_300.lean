import Mathlib

variable {G : Type*} [Group G] {n : Nat} {H : Subgroup G} [Fintype H]

lemma unique_subgroup_of_order_normal (h_unique : ∀ K : Subgroup G, Fintype K → Fintype.card K = n → K = H)
  (h_card : Fintype.card H = n) : H.normal := by sorry