import Mathlib

/-- The group presented by ⟨a, b | a^5 = b^2 = 1, ba = a^2 b⟩ is isomorphic to Z_2. -/
def presentation_group_is_ZMod2 :
  let F := FreeGroup (Fin 2)
  let a : F := FreeGroup.of (0 : Fin 2)
  let b : F := FreeGroup.of (1 : Fin 2)
  let R : Set F := {a ^ 5, b ^ 2, b * a * b⁻¹ * (a ^ 2)⁻¹}
  let N := Subgroup.normalClosure R
  let G := F ⧸ N
  G ≃* Multiplicative (ZMod 2) := by sorry