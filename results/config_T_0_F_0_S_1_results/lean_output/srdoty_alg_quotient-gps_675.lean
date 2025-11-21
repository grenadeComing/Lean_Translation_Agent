import Mathlib

theorem monoid_hom_ker_eq_bot_iff_injective {G H : Type _} [Group G] [Group H] (f : G →* H) :
  Function.Injective (f : G → H) ↔ f.ker = (⊥ : Subgroup G) := by sorry