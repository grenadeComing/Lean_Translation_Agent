import Mathlib

/-- The product of two topological spaces is compact iff each factor is compact. -/
theorem compactSpace_prod_iff {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace (X × Y) ↔ CompactSpace X ∧ CompactSpace Y := by sorry
