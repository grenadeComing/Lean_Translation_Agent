import Mathlib

variable {G : Type*} [Group G]

/-- Given a family of subgroups H i of G, the product map sends a choice of one element
    from each H i to their product in G using List.ofFn and List.prod. -/
def prod_subgroups_map {n : ℕ} (H : Fin n → Subgroup G) (f : ∀ i, H i) : G :=
  (List.ofFn fun i => (f i : G)).prod

/-- If G is the internal direct product of the normal subgroups H i (expressed by
    bijectivity of the product map), then distinct factors intersect trivially. -/
theorem internal_direct_product_trivial_intersection {n : ℕ} (H : Fin n → Subgroup G)
  (h_normal : ∀ i, (H i).Normal) (h_bij : Function.Bijective (prod_subgroups_map H)) :
  ∀ i j : Fin n, i ≠ j → (H i ⊓ H j) = ⊥ := by sorry