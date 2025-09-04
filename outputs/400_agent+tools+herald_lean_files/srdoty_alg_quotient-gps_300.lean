import Mathlib

/-!
If H is a subgroup of order n in a group G and H is the only subgroup of order n,
then H ⫽ G (H is normal).
-/

open MulAut

theorem unique_subgroup_of_order_normal {G : Type _} [Group G]
  {H : Subgroup G} {n : Nat}
  (H_fintype : Fintype (H : Set G))
  (uniq : ∀ (K : Subgroup G) [Fintype (K : Set G)], Fintype.card (K : Set G) = n → K = H) :
  ∀ g : G, Subgroup.map (MulAut.conj g) H = H := by sorry
