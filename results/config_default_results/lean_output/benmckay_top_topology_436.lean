-- Translation: Prove that a closed subset of a compact space is compact.
import Mathlib

theorem closed_subset_is_compact_of_compact_space {α} [TopologicalSpace α] [CompactSpace α] {s : Set α} (hs : IsClosed s) : IsCompact s := by
  sorry
