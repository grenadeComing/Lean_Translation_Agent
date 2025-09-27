import Mathlib

/--
Topological spaces X and Y are both compact iff their product is compact.
-/
theorem compact_space_prod_iff {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace X ∧ CompactSpace Y ↔ CompactSpace (X × Y) := by
  sorry
