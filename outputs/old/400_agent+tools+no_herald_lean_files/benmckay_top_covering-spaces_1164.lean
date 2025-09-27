import Mathlib

-- The fundamental group of any compact, path connected, and locally simply connected
-- topological space is finitely generated. We give a formal statement (without proof).

variable (LocallySimplyConnected : Type -> Prop)
variable (fundamental_group : Type -> Type)
variable (FinitelyGenerated : Type -> Prop)

theorem compact_path_connected_locally_simply_connected_fundamental_group_finitely_generated
  {X : Type _} [TopologicalSpace X] [CompactSpace X] [PathConnectedSpace X]
  (h : LocallySimplyConnected X) :
  FinitelyGenerated (fundamental_group X) := by sorry
