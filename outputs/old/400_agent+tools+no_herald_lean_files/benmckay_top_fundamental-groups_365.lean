import Mathlib

universe u

open Topology

/-- Opaque predicate: `X` is locally simply connected.  We do not expand this here; it is a
placeholder for the usual topological condition. -/
class LocallySimplyConnectedSpace (X : Type u) [TopologicalSpace X] : Prop

/-- Every compact, locally simply connected topological space has finitely generated
fundamental group (at each basepoint).  The proof is omitted. -/
theorem compact_locally_simply_connected_fundamental_group_fg {X : Type u} [TopologicalSpace X]
  [CompactSpace X] [LocallySimplyConnectedSpace X] (x : X) : Group.FG (FundamentalGroup X x) := by sorry
