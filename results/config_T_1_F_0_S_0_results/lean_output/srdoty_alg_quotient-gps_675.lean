import Mathlib

variables {G H : Type*} [Group G] [Group H]

/-- Injectivity test for homomorphisms: a group homomorphism f : G →* H is injective iff its kernel is the trivial subgroup. -/
theorem ker_eq_bot_iff_injective (f : G →* H) : Function.Injective (f : G → H) ↔ f.ker = ⊥ := by sorry