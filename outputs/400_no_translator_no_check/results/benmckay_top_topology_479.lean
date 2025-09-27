import Mathlib

open Set

theorem every_product_of_topological_spaces_is_compact_iff_products_of_compact_spaces_are_compact :
  (∀ {ι : Type _} (X : ι → Type _) [∀ i, TopologicalSpace (X i)], IsCompact (Set.univ : Set (∀ i, X i))) ↔
  (∀ {ι : Type _} (X : ι → Type _) [∀ i, TopologicalSpace (X i)], (∀ i, IsCompact (Set.univ : Set (X i))) → IsCompact (Set.univ : Set (∀ i, X i))) := by
  sorry
