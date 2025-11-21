import Mathlib

/-!
Every map of sets f : S → G to a group extends uniquely to a morphism of groups
f : ⟨S⟩ → G from the free group on the set S, mapping each s ∈ S to f(s).
-/

theorem free_group_lift_unique {α : Type _} {G : Type _} [Group G] (f : α → G) :
  ∃! (φ : FreeGroup α →* G), ∀ a : α, φ (FreeGroup.of a) = f a := by
  sorry
