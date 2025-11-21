import Mathlib

/-- The map φ : G → G × H, φ x = (x,1), is an injective homomorphism. -/
theorem srdoty_alg_products_372 {G H : Type*} [Group G] [Group H] :
  ∃ (φ : G →* G × H), (∀ x, (φ : G → G × H) x = (x, 1)) ∧ Function.Injective (φ : G → G × H) := by sorry
