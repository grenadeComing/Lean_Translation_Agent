import Mathlib

open Set

/-- A predicate saying a collection of subsets of `X` is a topology. -/
def is_topology {X : Type _} (T : Set (Set X)) : Prop :=
  (∅ : Set X) ∈ T ∧ (univ : Set X) ∈ T ∧
  (∀ U V : Set X, U ∈ T → V ∈ T → U ∩ V ∈ T) ∧
  (∀ S : Set (Set X), S ⊆ T → Set.sUnion S ∈ T)

/-- Given a family `T : ι → Set (Set X)` of topologies on `X`, the intersection
    of all `T i` is a topology, and it is the unique largest topology contained
    in every `T i`. -/
theorem exists_unique_largest_topology {X : Type _} {ι : Sort _} (T : ι → Set (Set X))
  (h : ∀ i, is_topology (T i)) :
  ∃! S : Set (Set X),
    is_topology S ∧ S ⊆ (⋂ i, T i) ∧ (∀ S', is_topology S' → S' ⊆ (⋂ i, T i) → S' ⊆ S) := by
  sorry
