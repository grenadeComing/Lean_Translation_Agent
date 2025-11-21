import Mathlib

variable {α : Type _} [TopologicalSpace α] [CompactSpace α] {s : Set α}

/-- A closed subset of a compact space is compact. -/
lemma is_compact_of_is_closed (hs : IsClosed s) : IsCompact s := by sorry