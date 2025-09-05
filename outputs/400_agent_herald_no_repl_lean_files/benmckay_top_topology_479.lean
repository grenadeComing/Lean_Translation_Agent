import Mathlib

/-!
# Product compactness equivalence (informal)

This file states the following proposition in Lean4 (no proof):

"Every product of topological spaces is compact" iff "Every product of compact topological spaces is compact".

Note: the two formal statements below are expressed using `IsCompact (univ : Set _)` to mean that the whole space is compact.
-/

open Set

theorem product_space_compact_iff_compact_factors :
  (∀ (ι : Type*) (α : ι → Type*) [∀ i, TopologicalSpace (α i)], IsCompact (univ : Set (∀ i, α i))) ↔
  (∀ (ι : Type*) (α : ι → Type*) [∀ i, TopologicalSpace (α i)], (∀ i, IsCompact (univ : Set (α i))) → IsCompact (univ : Set (∀ i, α i))) := by sorry
