import Mathlib

variable {X : Type _} [TopologicalSpace X] [T2Space X]

/-- In any Hausdorff (T2) space, every compact set is closed. -/
theorem compact_is_closed_of_t2 {s : Set X} (hs : IsCompact s) : IsClosed s := by sorry
