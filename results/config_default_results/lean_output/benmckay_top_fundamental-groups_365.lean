import Mathlib

open CategoryTheory Topology CompHausLike

/-- Show that every compact, locally simply connected topological space has finitely generated fundamental group. -/
theorem finitely_generated_of_compact_ext (X : Type*) [TopologicalSpace X] [CompactSpace X]
    [LocallySimplyConnectedSpace X] : (FundamentalGroup X).FG := by
  sorry
