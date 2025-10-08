import Mathlib

open Set

variable {α : Type _} [TopologicalSpace α]

/-- A closed subset of a compact space is compact. -/
theorem closed_subset_of_compact_space_is_compact {s : Set α} (hs : IsClosed s) [CompactSpace α] : IsCompact s := by sorry
