import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [CompactSpace Y]

/-- The product of two compact topological spaces is compact. -/
theorem compact_space_prod_of_compact_spaces : CompactSpace (X × Y) := by sorry
