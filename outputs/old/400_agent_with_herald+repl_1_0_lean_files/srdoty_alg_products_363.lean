import Mathlib

/-- The multiplication map from the product of the subgroups into G is bijective. -/
def IsInternalDirectProduct {G : Type _} [Group G] {n : Nat} (H : Fin n → Subgroup G) : Prop :=
  Function.Bijective fun f : ∀ i, H i => (List.ofFn fun i => (f i : G)).prod

/-- If G is the internal direct product of the normal subgroups H i, then distinct factors
    intersect trivially. -/
theorem internal_direct_product_disjoint {G : Type _} [Group G] {n : Nat}
  (H : Fin n → Subgroup G) (h : IsInternalDirectProduct H) :
  ∀ (i j : Fin n), i ≠ j → ∀ x, x ∈ H i → x ∈ H j → x = (1 : G) := by sorry
