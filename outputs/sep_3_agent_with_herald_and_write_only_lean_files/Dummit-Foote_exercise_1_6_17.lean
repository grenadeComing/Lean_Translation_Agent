import Mathlib

/--
Let G be any group. Prove that the map from G to itself defined by g ↦ g^{-1}
is a homomorphism if and only if G is abelian.
-/
theorem inv_map_is_hom_iff_comm {G : Type _} [Group G] :
  (∀ x y : G, (x * y)⁻¹ = x⁻¹ * y⁻¹) ↔ (∀ x y : G, x * y = y * x) := by sorry
