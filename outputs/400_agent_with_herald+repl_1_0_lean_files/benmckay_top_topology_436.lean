import Mathlib

/-- A closed subset of a compact space is compact. -/
theorem closed_subset_of_compact {α : Type _} [TopologicalSpace α] [CompactSpace α] {s : Set α}
  (hs : IsClosed s) : IsCompact s := by sorry
