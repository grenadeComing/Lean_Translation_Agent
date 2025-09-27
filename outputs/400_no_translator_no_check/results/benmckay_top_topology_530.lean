import Mathlib

/- In any Hausdorff space, every compact set is closed. -/
theorem compact_is_closed {X : Type _} [TopologicalSpace X] [T2Space X] {s : Set X} (hs : IsCompact s) : IsClosed s := by sorry
