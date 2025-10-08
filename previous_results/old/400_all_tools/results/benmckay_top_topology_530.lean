import Mathlib

universe u

/-- In a Hausdorff (T2) space, every compact set is closed. -/
theorem compact_is_closed {X : Type u} [TopologicalSpace X] [T2Space X] {s : Set X}
  (hs : IsCompact s) : IsClosed s := by sorry
