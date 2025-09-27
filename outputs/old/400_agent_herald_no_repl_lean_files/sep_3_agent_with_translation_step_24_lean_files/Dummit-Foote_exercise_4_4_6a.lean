import Mathlib

namespace Subgroup

variable {G : Type _} [Group G]

/-- A subgroup H of G is characteristic if it is fixed by every automorphism of G. -/
def IsCharacteristic (H : Subgroup G) : Prop :=
  ∀ (φ : G ≃* G), Subgroup.map φ.toMonoidHom H = H

/-- A characteristic subgroup is normal. -/
theorem is_characteristic_normal {H : Subgroup G} (h : IsCharacteristic H) : H.Normal := by sorry

end Subgroup
