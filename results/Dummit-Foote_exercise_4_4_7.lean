import Mathlib

variable {G : Type _} [Group G]

/-- If H is the unique subgroup of G of a given order n, then H is characteristic. -/
theorem unique_subgroup_of_order_is_characteristic {n : ℕ} (H : Subgroup G) [Fintype H]
  (h_card : Fintype.card H = n)
  (h_unique : ∀ (K : Subgroup G) [Fintype K], Fintype.card K = n → K = H) :
  ∀ (f : G ≃* G), Subgroup.map (f.toMonoidHom) H = H := by sorry
