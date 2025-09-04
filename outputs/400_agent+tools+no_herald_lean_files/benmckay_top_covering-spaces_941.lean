import Mathlib

/-!
Every map of sets f : S -> G to a group extends uniquely to a morphism of groups
f : ⟨S⟩ -> G from the free group on the set S, mapping each s ∈ S to f(s).
-/

theorem free_group_lift_unique {S : Type _} {G : Type _} [Group G] (f : S → G) :
  ∃! (h : FreeGroup S →* G), h.toFun ∘ FreeGroup.of = f := by
  sorry
