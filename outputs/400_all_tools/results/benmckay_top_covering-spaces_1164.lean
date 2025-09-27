import Mathlib

/-- A placeholder class for the topological property of being locally simply connected.
    Mathlib4 may not provide a formal name for this, so we introduce it as a class.
    (We do not give any fields because this file only states a theorem, not a proof.) -/
class LocallySimplyConnected (X : Type _) [TopologicalSpace X] : Prop

/-- The fundamental group of a compact, path connected, locally simply connected
    topological space is finitely generated. We state the result for each basepoint x.
    The proof is omitted (:= by sorry). -/
theorem fundamental_group_finitely_generated_of_compact_path_connected_locally_simply_connected
  (X : Type _) [TopologicalSpace X] [CompactSpace X] [PathConnectedSpace X]
  [LocallySimplyConnected X] :
  ∀ x : X, Group.FG (FundamentalGroup X x) := by sorry
