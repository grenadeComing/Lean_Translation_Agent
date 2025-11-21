import Mathlib
open Filter Set TopologicalSpace
open scoped Topology

/-- In any Hausdorff space, every compact set is closed. -/
theorem isClosed_of_isCompact {α : Type u_1} [TopologicalSpace α] [T2Space α] {s : Set α} (hs : IsCompact s) :
    IsClosed s := by sorry
