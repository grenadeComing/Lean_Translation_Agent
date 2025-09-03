import Mathlib

universe u v

variable {X : Type u} {ι : Sort v} (T : ι → TopologicalSpace X)

/-- Given a family `T` of topologies on `X`, there exists a unique largest topology on `X`
    contained in all the topologies `T i`. -/
theorem exists_unique_largest_topology_contained_in_family :
  ∃! (S : TopologicalSpace X),
    (∀ s : Set X, @IsOpen X S s → ∀ i, @IsOpen X (T i) s) ∧
    (∀ S', (∀ s : Set X, @IsOpen X S' s → ∀ i, @IsOpen X (T i) s) → ∀ s, @IsOpen X S' s → @IsOpen X S s) := by
  sorry
