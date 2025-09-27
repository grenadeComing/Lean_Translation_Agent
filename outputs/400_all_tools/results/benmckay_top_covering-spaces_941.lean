import Mathlib

/-- Every map f : S → G to a group extends uniquely to a group hom φ : FreeGroup S →* G
    with φ (FreeGroup.of s) = f s for all s. -/
theorem free_group_extend_unique {S : Type _} {G : Type _} [Group G] (f : S → G) :
  ∃! φ : FreeGroup S →* G, ∀ s : S, φ (FreeGroup.of s) = f s := by sorry
