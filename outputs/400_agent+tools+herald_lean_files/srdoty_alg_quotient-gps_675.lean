import Mathlib

theorem injective_iff_ker_eq_bot {G H : Type*} [Group G] [Group H] (f : G →* H) :
  Function.Injective (f : G → H) ↔ MonoidHom.ker f = (⊥ : Subgroup G) := by sorry
