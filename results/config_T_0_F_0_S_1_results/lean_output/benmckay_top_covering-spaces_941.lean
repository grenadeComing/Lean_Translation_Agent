import Mathlib

/-!
Universal property of the free group: every map of sets f : S → G (with G a group)
extends uniquely to a group homomorphism from the free group on S.
-/

theorem free_group.lift_unique {S : Type _} {G : Type _} [Group G] (f : S → G) :
  ∃! (φ : FreeGroup S →* G), ∀ s : S, φ (FreeGroup.of s) = f s := by sorry
