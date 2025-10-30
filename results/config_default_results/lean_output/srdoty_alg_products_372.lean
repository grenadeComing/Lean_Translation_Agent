import Mathlib

theorem phi_injective_hom {G H : Type*} [Group G] [Group H] :
  Function.Injective (fun x : G => (x, (1 : H))) := by
  sorry
