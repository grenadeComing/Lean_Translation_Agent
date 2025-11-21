import Mathlib

/-- If G = H_1 × ... × H_n is the internal direct product of the normal subgroups H_i,
then H_i ∩ H_j = {1} for i ≠ j. -/
theorem internal_direct_product_pairwise_inf_eq_bot {G : Type*} [Group G] {n : ℕ}
  {H : Fin n → Subgroup G} (h : IsInternal H) :
  ∀ {i j : Fin n}, i ≠ j → H i ⊓ H j = ⊥ := by sorry