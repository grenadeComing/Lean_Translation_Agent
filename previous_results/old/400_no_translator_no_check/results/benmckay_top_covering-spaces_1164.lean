import Mathlib

open Set

theorem fundamental_group_of_compact_path_connected_locally_simply_connected_is_finitely_generated
  {X : Type*} [TopologicalSpace X] [CompactSpace X] [PathConnectedSpace X]
  (hloc : ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ SimplyConnectedSpace (Subtype U)) :
  ∃ (x0 : X) (S : Finset (FundamentalGroup X x0)),
    Subgroup.closure (↑S : Set (FundamentalGroup X x0)) = (⊤ : Subgroup (FundamentalGroup X x0)) := by sorry
