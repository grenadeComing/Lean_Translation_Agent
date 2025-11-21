import Mathlib

universe u

open TopologicalSpace

/-- Every contractible topological space is connected. -/
theorem contractible_space_connected {X : Type u} [TopologicalSpace X] (h : Contractible X) : ConnectedSpace X := by sorry

/-- Every contractible topological space has trivial homotopy groups. -/
theorem contractible_space_trivial_homotopy_groups {X : Type u} [TopologicalSpace X] (h : Contractible X) : ∀ (x : X) (n : ℕ), IsTrivial (homotopy_group n X x) := by sorry
