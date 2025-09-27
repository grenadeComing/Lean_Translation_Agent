import Mathlib

/-!
In any Hausdorff space, every compact set is closed.
-/

theorem is_compact_is_closed_of_t2 {α : Type _} [TopologicalSpace α] [T2Space α] {s : Set α} (hs : IsCompact s) : IsClosed s := by sorry
