import Mathlib

variable {X : Type*} {ι : Sort*} (T : ι → TopologicalSpace X)

/-- For a family of topologies T_i on X, the intersection of their open sets defines a
    topology which is the largest topology contained in all the T_i. -/
theorem exists_unique_largest_topology_contained_in_all :
  ∃! (t : TopologicalSpace X),
    (∀ i s, @IsOpen X t s → @IsOpen X (T i) s) ∧
    (∀ t', (∀ i s, @IsOpen X t' s → @IsOpen X (T i) s) → (∀ s, @IsOpen X t s → @IsOpen X t' s)) := by
  sorry
