import Mathlib

/--
Prove that the fundamental group of any compact, path connected, and locally simply connected topological space is finitely generated.
-/

theorem fundamental_group_compact_path_connected_locally_simply_connected_finitely_generated
  (X : Type*) [TopologicalSpace X]
  [CompactSpace X] [PathConnected X] [LocallySimplyConnected X] :
  ∀ x : X, FinitelyGenerated (π1 X x) := by
  intro x
  -- placeholder proof
  sorry
