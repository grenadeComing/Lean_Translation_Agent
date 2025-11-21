import Mathlib

/-- In a topological space, any closed subset of a compact space is compact. -/
theorem is_compact_of_isClosed_in_compact_space {α : Type _} [TopologicalSpace α] [CompactSpace α]
  {s : Set α} (hs : IsClosed s) : IsCompact s := by sorry