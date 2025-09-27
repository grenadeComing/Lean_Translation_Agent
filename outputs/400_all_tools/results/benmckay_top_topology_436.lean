import Mathlib

/-!
Prove that a closed subset of a compact space is compact.
File: benmckay_top_topology_436.lean
-/

open Set

/-- If α is a topological space and α is compact, and s is a closed subset of α, then s is compact. -/
theorem is_compact_of_is_closed {α : Type*} [TopologicalSpace α] {s : Set α} (hs : IsClosed s)
  [CompactSpace α] : IsCompact s := by sorry
