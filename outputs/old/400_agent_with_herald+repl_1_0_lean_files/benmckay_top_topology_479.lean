import Mathlib

theorem product_compact_iff_forall_compact {ι : Type _} {α : ι → Type _} [∀ i, TopologicalSpace (α i)] :
  CompactSpace (∀ i, α i) ↔ ∀ i, CompactSpace (α i) := by sorry
