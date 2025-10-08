import Mathlib

/-- Every compact, locally simply connected, path connected topological space has
a finitely generated fundamental group (based at any point).

This statement is intentionally left as a declaration ending with `:= by sorry`.
-/
theorem compact_locally_simply_connected.fg_fundamental_group {X : Type _}
  [TopologicalSpace X] [CompactSpace X] [LocallySimplyConnectedSpace X] [PathConnectedSpace X]
  (x0 : X) : IsFinitelyGenerated (FundamentalGroup X x0) := by sorry
