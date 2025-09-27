import Mathlib

/-- Marker typeclass: X is (the underlying space of) a finite graph. -/
class IsFiniteGraph (X : Type _) [TopologicalSpace X] : Prop where

/-- Any connected finite graph has finitely generated fundamental group. -/
theorem fundamental_group_of_connected_finite_graph_fg
  {X : Type _} [TopologicalSpace X] [ConnectedSpace X] (x : X)
  [IsFiniteGraph X] : Group.FG (FundamentalGroup X x) := by sorry
