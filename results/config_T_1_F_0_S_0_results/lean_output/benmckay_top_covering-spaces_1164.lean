import Mathlib

/-- The fundamental group of any compact, path connected, and locally simply connected
topological space is finitely generated. -/
theorem fundamental_group_fg_of_compact_path_connected_locally_simply_connected
  (X : Type*) [TopologicalSpace X] (x0 : X)
  [CompactSpace X] [PathConnectedSpace X] [LocallySimplyConnectedSpace X] :
  FinitelyGenerated (FundamentalGroup X x0) := by sorry