import Mathlib

variable {X : Type _}

/- A contractible topological space is connected. -/
theorem contractible_connected [TopologicalSpace X] (h : Contractible X) : ConnectedSpace X := by sorry

/- Contractible pointed spaces have trivial homotopy groups. -/
theorem contractible_homotopy_groups_trivial [Pointed X] (h : Contractible X) (n : ℕ) : IsTrivial (homotopy_group n X) := by sorry
