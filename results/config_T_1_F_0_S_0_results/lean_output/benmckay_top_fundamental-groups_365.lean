import Mathlib

/-- Every compact, locally simply connected topological space has finitely generated fundamental group. -/
theorem finitely_generated_fundamental_group_of_compact_locally_simply_connected_space
  {X : Type*} [TopologicalSpace X] [CompactSpace X] [LocallySimplyConnectedSpace X] :
  ∀ (x : X), (FundamentalGroup X x).FinitelyGenerated := by sorry