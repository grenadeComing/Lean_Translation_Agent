import Mathlib

/-!
Every map of sets `f : S → G` to a group extends uniquely to a morphism of groups
`φ : FreeGroup S →* G` from the free group on the set `S`, mapping each `s : S` to `f s`.
-/

variable {S : Type _} {G : Type _} [Group G]

theorem free_group_lift_extends_unique (f : S → G) :
  ∃! (φ : FreeGroup S →* G), ∀ s : S, φ (FreeGroup.of s) = f s := by sorry
