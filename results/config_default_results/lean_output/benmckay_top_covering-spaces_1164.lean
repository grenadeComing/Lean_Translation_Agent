import Mathlib

/--
Prove that the fundamental group of any compact, path connected, and locally simply connected topological space is finitely generated.
This is a statement (proof sketch would be necessary in a full project). We provide a formal statement with a placeholder proof.
-/
theorem fundamental_group_finitely_generated_of_compact_locally_simply_connected
  (X : Type) [TopologicalSpace X]
  [CompactSpace X]
  [PathConnectedSpace X]
  (x : X)
  (hLoc : LocallySimplyConnected X) :
  FinitelyGenerated (π1 X x) := by
  classical
  -- Proof goes here
  sorry
