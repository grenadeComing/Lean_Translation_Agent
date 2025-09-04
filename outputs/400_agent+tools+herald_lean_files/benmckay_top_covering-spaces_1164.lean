import Mathlib

open Set

theorem fundamental_group_finitely_generated_of_compact_path_connected_locally_simply_connected
  (X : Type _) [TopologicalSpace X] [CompactSpace X] [PathConnectedSpace X]
  (hloc : ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ SimplyConnectedSpace {y : X | y ∈ U}) :
  ∀ x0 : X, ∃ S : Set (FundamentalGroup X x0),
    Set.Finite S ∧ Subgroup.closure (S : Set (FundamentalGroup X x0)) = (⊤ : Subgroup (FundamentalGroup X x0)) := by
  sorry
