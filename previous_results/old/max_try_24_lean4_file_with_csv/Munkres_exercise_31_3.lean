import Mathlib
open Set Filter TopologicalSpace
open Filter Topology

/-- Show that every order topology is regular. -/
theorem regularSpace_orderTopology (α : Type u_1) [Preorder α] [TopologicalSpace α] [OrderTopology α] :
    RegularSpace α := by sorry
