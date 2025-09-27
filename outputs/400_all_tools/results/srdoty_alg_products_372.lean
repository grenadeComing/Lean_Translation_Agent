import Mathlib

variable {G H : Type _} [Group G] [Group H]

/-- The embedding φ : G → G × H sending x ↦ (x, 1). -/
def phi (x : G) : G × H := (x, (1 : H))

/-- φ is a homomorphism: φ(xy) = φ(x)φ(y). -/
theorem phi_mul (x y : G) : phi (x * y) = phi x * phi y := by sorry

/-- φ is injective. -/
theorem phi_injective : Function.Injective (phi : G → G × H) := by sorry
