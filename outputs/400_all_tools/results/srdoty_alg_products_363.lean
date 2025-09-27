import Mathlib

open BigOperators

/-- If G = H_1 × ... × H_n is an internal direct product in the sense that
    every g : G has a unique tuple (h_i) with h_i ∈ H_i and g = ∏ i, h_i (here expressed
    as List.prod (List.ofFn f)), then distinct factors intersect trivially. -/
theorem internal_direct_product_pairwise_intersection_trivial {G : Type _} [Group G]
  {n : Nat} (H : Fin n → Subgroup G)
  (h_unique : ∀ g : G, ∃! f : Fin n → G, (∀ i, f i ∈ H i) ∧ g = List.prod (List.ofFn f)) :
  ∀ i j : Fin n, i ≠ j → ((H i : Set G) ∩ (H j : Set G)) = ({1} : Set G) := by
  sorry
