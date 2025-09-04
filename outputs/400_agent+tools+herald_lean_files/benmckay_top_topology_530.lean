import Mathlib
open Set Filter Topology TopologicalSpace Function

/-- In any Hausdorff space, every compact set is closed. -/
theorem isClosed_of_isCompact {X : Type*} [TopologicalSpace X] [T2Space X] {s : Set X} (hs : IsCompact s) : IsClosed s := by sorry