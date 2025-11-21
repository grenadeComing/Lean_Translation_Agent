import Mathlib

/-!
Statement: Every product of topological spaces is compact iff a product of compact topological spaces is compact.
This file contains only the formal statement (no proof).
-/

theorem product_compact_iff_product_of_compacts_compact :
  (∀ (ι : Type*) (X : ι → Type*) [∀ i, TopologicalSpace (X i)], CompactSpace (∀ i, X i)) ↔
  (∀ (ι : Type*) (X : ι → Type*) [∀ i, TopologicalSpace (X i)] [∀ i, CompactSpace (X i)], CompactSpace (∀ i, X i)) :=
by
  sorry