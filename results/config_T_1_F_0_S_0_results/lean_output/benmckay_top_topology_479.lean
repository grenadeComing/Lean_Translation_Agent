import Mathlib

theorem product_of_topological_spaces_compact_iff_product_of_compact_components :
  (∀ (ι : Type*) (X : ι → Type*) [∀ i, TopologicalSpace (X i)], CompactSpace (∀ i, X i)) ↔
  (∀ (ι : Type*) (X : ι → Type*) [∀ i, TopologicalSpace (X i)] [∀ i, CompactSpace (X i)], CompactSpace (∀ i, X i)) := by sorry