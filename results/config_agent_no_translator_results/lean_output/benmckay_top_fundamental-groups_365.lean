import Mathlib

-- Axiom: locally simply connected property for a topological space (not necessarily a typeclass in Mathlib)
axiom LocallySimplyConnected (X : Type) [TopologicalSpace X] : Prop

-- Theorem: In a compact space that is locally simply connected, the fundamental group at a base point is finitely generated.
theorem compact_locally_simply_connected_finitely_generated_pi1
  (X : Type) [TopologicalSpace X]
  [CompactSpace X]
  (h : LocallySimplyConnected X)
  (x : X) : FinitelyGenerated (π1 X x) := by
  sorry
