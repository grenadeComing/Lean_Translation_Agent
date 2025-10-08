import Mathlib

variable {G : Type _} [Group G]

/-- If H is a subgroup of order n in G and H is the only subgroup of order n, then H is normal.
We state normality by saying every conjugate of H equals H. -/
theorem unique_subgroup_of_order_normal {H : Subgroup G} [Fintype H] {n : Nat}
  (hcard : Fintype.card H = n)
  (huniq : ∀ (K : Subgroup G) [Fintype K], Fintype.card K = n → K = H) :
  ∀ g : G, Subgroup.conjugate g H = H := by
  sorry
