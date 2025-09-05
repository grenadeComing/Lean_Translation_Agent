import Mathlib

variable {G : Type _} [Group G]

variable {n : Nat}
variable {H : Fin n → Subgroup G}

/-- If G is the internal direct product of the normal subgroups H i, then any two distinct
    factors intersect trivially. -/
theorem is_internal_direct_product_pairwise_disjoint (h : IsInternalDirectProduct fun i => H i)
  (i j : Fin n) (hij : i ≠ j) : (H i ⊓ H j) = (⊥ : Subgroup G) := by sorry
