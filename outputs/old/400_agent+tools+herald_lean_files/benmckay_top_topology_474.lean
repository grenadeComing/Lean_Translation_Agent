import Mathlib

/-- If X and Y are compact topological spaces, then X × Y is compact. -/
theorem compact_space_prod {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [CompactSpace Y] : CompactSpace (X × Y) := by sorry
