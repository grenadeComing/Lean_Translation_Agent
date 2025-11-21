import Mathlib

theorem injective_iff_ker_trivial {G H : Type*} [Group G] [Group H] (f : G →* H) :
  Function.Injective (f : G → H) ↔ f.ker = Subgroup.closure (Set.singleton (1 : G)) := by sorry
