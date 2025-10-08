import Mathlib

section

variable {G H : Type _} [Group G] [Group H]

/-- The map φ : G → G × H given by φ(x) = (x, 1) -/
def phi : G →* G × H := { toFun := fun x => (x, (1 : H)), map_one' := by simp, map_mul' := by simp }

/-- φ is injective and a homomorphism. -/
theorem phi_injective_hom : Function.Injective (phi : G → G × H) := by sorry

end
