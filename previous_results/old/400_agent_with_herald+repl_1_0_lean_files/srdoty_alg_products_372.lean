import Mathlib

variable {G H : Type*} [Group G] [Group H]

/-- The map φ : G → G × H given by φ(x) = (x, 1). -/
def phi : G →* G × H :=
  { toFun := fun x => (x, 1),
    map_one' := by simp,
    map_mul' := by intros; simp }

/-- φ is injective. -/
theorem phi_injective : Function.Injective (phi : G → G × H) := by sorry
