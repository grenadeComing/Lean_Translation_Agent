import Mathlib

open Subgroup

variable {G : Type*} [Group G]

/-- If H is the only subgroup of G of order n (as a fintype), then H is invariant under conjugation. -/
theorem unique_subgroup_of_order_normal {H : Subgroup G} [Fintype H] {n : ℕ}
  (h_card : Fintype.card H = n)
  (h_unique : ∀ K : Subgroup G, Fintype.card K = n → K = H) :
  ∀ g : G, Subgroup.map ((MulAut.conj g).toMulHom) H = H := by sorry
