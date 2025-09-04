import Mathlib

variable {G : Type*} [Group G]

/-- If G is (internally) the direct product of subgroups H i and the multiplication map
    m : (∀ i, H i) → G is injective (encoding uniqueness of decomposition), then distinct
    factors intersect trivially. -/
theorem internal_direct_product_disjoint {n : Nat} (H : Fin n → Subgroup G)
  (m : (∀ i, H i) → G)
  (h_inj : Function.Injective m) :
  ∀ i j, i ≠ j → ((H i : Set G) ∩ (H j : Set G) = ({1} : Set G)) := by sorry
