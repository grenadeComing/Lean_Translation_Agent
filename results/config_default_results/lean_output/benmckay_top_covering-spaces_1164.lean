import Mathlib

/-- Prove that the fundamental group of any compact, path connected, and locally simply connected topological space is finitely generated. -/
theorem of_compact_path_connected_locally_simply_connected (X : Type*) [TopologicalSpace X]
    [CompactSpace X] [PathConnectedSpace X] [LocallySimplyConnectedSpace X] :
    Monoid.FG (FundamentalGroup X) := by
  sorry
