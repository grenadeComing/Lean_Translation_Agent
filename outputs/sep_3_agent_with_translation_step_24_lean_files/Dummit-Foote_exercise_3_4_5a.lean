import Mathlib
open Subgroup

/-- Prove that subgroups of a solvable group are solvable. -/
theorem subgroup_isSolvable {G : Type*} [Group G] [IsSolvable G] (H : Subgroup G) : IsSolvable H := by sorry
