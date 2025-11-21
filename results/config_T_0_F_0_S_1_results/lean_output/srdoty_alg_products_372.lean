import Mathlib

variable {G H : Type _} [Group G] [Group H]

/-- The embedding φ : G → G × H defined by φ x = (x, 1). -/
def phi : G → G × H := fun x => (x, (1 : H))

/-- φ is a group homomorphism (preserves multiplication) and is injective. -/
theorem phi_is_injective_hom : Function.Injective (phi : G → G × H) ∧
  ∀ x y : G, phi (x * y) = phi x * phi y := by sorry