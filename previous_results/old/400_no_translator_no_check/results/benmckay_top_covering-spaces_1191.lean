import Mathlib

/-- Every contractible space is connected and has trivial homotopy groups. -/
theorem contractible_space_connected_and_trivial_homotopy_groups {X : Type _} [TopologicalSpace X]
  (h : ContractibleSpace X) :
  ConnectedSpace X ∧ ∀ (N : Type _) (x : X), Subsingleton (HomotopyGroup N X x) := by
  sorry
