import Mathlib

/-!
Injectivity test for homomorphisms:
If f : G → H is a group homomorphism with kernel K then f is injective iff K is the trivial subgroup.
-/

theorem monoid_hom.ker_eq_bot_iff_injective {G : Type*} [Group G] {H : Type*} [Group H] (f : G →* H) :
  f.ker = (⊥ : Subgroup G) ↔ Function.Injective (f : G → H) := by sorry
