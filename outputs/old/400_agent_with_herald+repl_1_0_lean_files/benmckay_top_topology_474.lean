import Mathlib

/-- The product of two compact topological spaces is compact. -/
theorem compact_space_prod {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [CompactSpace Y] : CompactSpace (X × Y) := by sorry
