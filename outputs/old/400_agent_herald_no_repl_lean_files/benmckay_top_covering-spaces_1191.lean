import Mathlib

open Topology

/-- Every contractible space is connected. -/
theorem contractible_space_connected {X : Type*} [TopologicalSpace X] (h : IsContractible X) : ConnectedSpace X := by sorry

/-- For a contractible space X, all homotopy groups are trivial. -/
theorem contractible_space_trivial_homotopy_groups {X : Type*} [TopologicalSpace X] (h : IsContractible X) (n : ℕ) (x : X) : IsTrivial (homotopy_group n X x) := by sorry
