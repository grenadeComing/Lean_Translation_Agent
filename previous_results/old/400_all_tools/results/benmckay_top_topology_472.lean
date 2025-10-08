import Mathlib

/-- If X and Y are topological spaces, X × Y is compact iff X and Y are compact. -/
theorem compactSpace_prod_iff {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace (X × Y) ↔ CompactSpace X ∧ CompactSpace Y := by
  sorry
