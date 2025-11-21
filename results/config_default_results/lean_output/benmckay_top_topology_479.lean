import Mathlib

/-- Statement: Every product of topological spaces is compact iff every product of compact topological spaces is compact. -/
theorem every_product_compact_iff_product_of_compact_compact :
  (∀ (ι : Type*) (X : ι → Type*) [∀ i, TopologicalSpace (X i)], CompactSpace (∀ i, X i)) ↔
  (∀ (ι : Type*) (X : ι → Type*) [∀ i, TopologicalSpace (X i)], (∀ i, CompactSpace (X i)) → CompactSpace (∀ i, X i)) := by sorry
