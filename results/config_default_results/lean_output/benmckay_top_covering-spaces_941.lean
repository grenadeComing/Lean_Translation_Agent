import Mathlib

variable {S : Type _} {G : Type _} [Group G]

theorem free_group_lift_unique (f : S → G) : ∃! (F : FreeGroup S →* G), ∀ s : S, F (FreeGroup.of s) = f s := by sorry
