import Mathlib

open Subgroup

/--
Injectivity test for homomorphisms: a group homomorphism f : G →* H is injective iff its kernel
is the trivial subgroup.
-/
theorem MonoidHom.injective_iff_ker_eq_bot {G H : Type*} [Group G] [Group H] (f : G →* H) :
  Function.Injective (f : G → H) ↔ f.ker = (⊥ : Subgroup G) := by sorry
