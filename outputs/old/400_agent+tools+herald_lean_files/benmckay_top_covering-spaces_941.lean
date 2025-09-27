import Mathlib

universe u v

/-- Every map of sets (f : S → G) to a group extends uniquely to a morphism of groups (f : ⟨S⟩ → G)
from the free group on the set S, mapping each s ∈ S to f(s), extending linearly to all words on the alphabet S. -/
noncomputable def freeGroup_lift_equiv {S : Type u} {G : Type v} [Group G] :
  (S → G) ≃ (FreeGroup S →* G) := by sorry
