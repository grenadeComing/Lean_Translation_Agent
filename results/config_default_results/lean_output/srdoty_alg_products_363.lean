import Mathlib

universe u v

variable {G : Type u} [Group G]
variable {ι : Type v}
variable (H : ι → Subgroup G) (h : IsInternal H)

/-- If G is the internal direct product of the subgroups H i, then for i ≠ j we have H i ⊓ H j = ⊥. -/
theorem intersection_trivial_of_internal_direct_product
  {i j : ι} (hij : i ≠ j) : H i ⊓ H j = (⊥ : Subgroup G) := by
  -- proof is omitted
  sorry