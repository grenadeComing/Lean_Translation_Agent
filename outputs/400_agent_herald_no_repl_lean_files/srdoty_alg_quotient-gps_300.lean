import Mathlib

/-- If H is the unique subgroup of G of order n, then H is normal. -/
theorem subgroup_unique_of_card_is_normal {G : Type _} [Group G] {H : Subgroup G} {n : Nat}
  (hH : H.card = n)
  (huniq : ∀ K : Subgroup G, K.card = n → K = H) :
  ∀ g : G, H.conjugate g = H := by sorry
