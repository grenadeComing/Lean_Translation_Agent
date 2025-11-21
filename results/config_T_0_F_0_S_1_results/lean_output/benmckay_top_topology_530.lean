import Mathlib

/-!
In any Hausdorff space, every compact set is closed.
-/
lemma is_closed_of_compact {α : Type _} [TopologicalSpace α] [T2Space α] {s : Set α} (hs : IsCompact s) : IsClosed s := by sorry
