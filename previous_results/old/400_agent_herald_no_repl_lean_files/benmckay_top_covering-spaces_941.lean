import Mathlib

/-!
Every map of sets f : S → G to a group extends uniquely to a morphism of groups
from the free group on the set S, mapping each s ∈ S to f s (and extending to
all words on the alphabet S).
-/

theorem free_group_lift_unique {S : Type _} {G : Type _} [Group G] (f : S → G) :
  ∃! (φ : FreeGroup S →* G), ∀ s : S, φ (FreeGroup.of s) = f s := by sorry
