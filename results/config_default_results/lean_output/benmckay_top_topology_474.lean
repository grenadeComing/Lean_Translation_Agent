import Mathlib

-- Let X and Y be compact topological spaces. Prove that every open cover of X × Y has a finite subcover.
theorem compact_prod_of_compact (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [CompactSpace Y] : CompactSpace (X × Y) := by
  sorry
