import Mathlib

variable {X : Type _} [TopologicalSpace X]

theorem is_closed.subtype_compact {s : Set X} (hs : IsClosed s) (h : CompactSpace X) : CompactSpace (↥s) := by sorry
