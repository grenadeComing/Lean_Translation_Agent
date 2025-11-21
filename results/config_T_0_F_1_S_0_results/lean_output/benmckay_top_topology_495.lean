import Mathlib

/-- Topological spaces X and Y are both compact just when their product is compact. -/
theorem compact_space_prod_iff {α : Type _} {β : Type _} [TopologicalSpace α] [TopologicalSpace β] :
  (CompactSpace α ∧ CompactSpace β) ↔ CompactSpace (α × β) := by sorry
