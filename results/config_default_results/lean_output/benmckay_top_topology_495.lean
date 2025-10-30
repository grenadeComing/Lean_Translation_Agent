import Mathlib

/-- Topological spaces X and Y are both compact just when their product is compact. -/
theorem benmckay_top_topology_495 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace (X × Y) ↔ (CompactSpace X ∧ CompactSpace Y) := by
  sorry
