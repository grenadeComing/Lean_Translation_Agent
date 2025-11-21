import Mathlib

open Set

/-- In any Hausdorff space, every compact set is closed. -/
theorem benmckay_top_topology_530 {X : Type _} [TopologicalSpace X] [T2Space X]
  {s : Set X} (hs : IsCompact s) : IsClosed s := by sorry
