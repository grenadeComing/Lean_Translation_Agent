import Mathlib

/-- If X and Y are topological spaces, X × Y is compact iff X and Y are both compact. -/
theorem compactSpace_prod_iff {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace (X × Y) ↔ CompactSpace X ∧ CompactSpace Y := by sorry
