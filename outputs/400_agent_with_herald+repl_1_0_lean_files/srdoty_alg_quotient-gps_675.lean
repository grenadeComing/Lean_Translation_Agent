import Mathlib

variable {G H : Type _} [Group G] [Group H]

/-- Injectivity test for group homomorphisms: a group homomorphism f has trivial kernel iff it is injective. -/
theorem mul_hom_injective_iff_ker_eq_bot (f : G →* H) :
  Function.Injective (f : G → H) ↔ f.ker = (⊥ : Subgroup G) := by
  sorry
