import Mathlib

/-!
# Product of compact spaces is compact

This file states that the product of two compact topological spaces is compact.
-/

open Set

theorem compact_space_prod {X : Type _} {Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace X → CompactSpace Y → CompactSpace (X × Y) := by
  sorry
