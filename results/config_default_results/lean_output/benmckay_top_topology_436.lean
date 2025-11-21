import Mathlib

universe u

variable {X : Type u} [TopologicalSpace X] [CompactSpace X]

/-- A closed subset of a compact space is compact. -/
theorem is_compact_of_is_closed {s : Set X} (hs : IsClosed s) : IsCompact s := by sorry
