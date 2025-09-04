import Mathlib

variable {G H : Type*} [Group G] [Group H]

/-- Injectivity test for group homomorphisms: a group homomorphism f : G →* H is injective iff
its kernel is the trivial subgroup. -/
theorem monoid_hom_injective_iff_ker_eq_bot (f : G →* H) :
  Function.Injective (f : G → H) ↔ f.ker = (⊥ : Subgroup G) := by sorry
