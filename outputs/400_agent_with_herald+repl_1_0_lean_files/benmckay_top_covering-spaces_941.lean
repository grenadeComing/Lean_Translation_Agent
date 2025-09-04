import Mathlib

universe u v

/-- Every map of sets f : S -> G to a group extends uniquely to a morphism of groups
    from the free group on the set S, mapping each s ∈ S to f(s). -/
theorem free_group.lift_unique {S : Type u} {G : Type v} [Group G] (f : S → G) :
  ∃! (φ : FreeGroup S →* G), φ.toFun ∘ (FreeGroup.of : S → FreeGroup S) = f := by sorry
