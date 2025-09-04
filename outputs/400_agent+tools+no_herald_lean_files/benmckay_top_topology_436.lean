import Mathlib

variable {X : Type _} [TopologicalSpace X] {s : Set X}

theorem is_compact_of_is_closed_of_compact_space (hX : CompactSpace X) (hs : IsClosed s) : IsCompact s := by sorry
