import Mathlib

open Subgroup

/-!
Show that a subgroup H of order n which is the unique subgroup of that order is normal.
We state normality elementwise: for all g and h ∈ H, g h g⁻¹ ∈ H.
-/

theorem unique_subgroup_of_order_normal {G : Type*} [Group G] {H : Subgroup G} {n : ℕ}
  [Fintype H]
  (h_card : Fintype.card H = n)
  (h_unique : ∀ (K : Subgroup G) [Fintype K], Fintype.card K = n → K = H) :
  ∀ g : G, ∀ x : H, (g * (x : G) * g⁻¹ : G) ∈ (H : Set G) := by
  sorry
