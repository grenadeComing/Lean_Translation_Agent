import Mathlib

universe u

/-- Every compact, locally simply connected topological space has finitely generated fundamental group. -/
theorem compact_locally_simply_connected.fundamental_group_fg {X : Type u} [TopologicalSpace X] [CompactSpace X] [LocallyPathConnected X] [LocallySimplyConnected X] (x0 : X) : IsFinitelyGenerated (AlgebraicTopology.fundamentalGroup X x0) := by sorry
