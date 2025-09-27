import Mathlib

variable {G H : Type _} [Group G] [Group H] (f : G →* H)

/-- Injectivity test for homomorphisms: f is injective iff its kernel is the trivial subgroup. -/
theorem MonoidHom.injective_iff_ker_eq_bot : Function.Injective (f : G → H) ↔ f.ker = (⊥ : Subgroup G) := by sorry
