import Mathlib

variable {G : Type _} [Group G]

/-- Let G be any group. The map g ↦ g⁻¹ is a homomorphism iff G is abelian. -/
theorem inv_is_hom_iff_comm : (∀ x y : G, (x * y)⁻¹ = x⁻¹ * y⁻¹) ↔ (∀ x y : G, x * y = y * x) := by
  sorry
