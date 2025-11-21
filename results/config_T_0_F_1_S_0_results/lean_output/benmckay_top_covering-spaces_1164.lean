import Mathlib

/-!
Statement only: The fundamental group of any compact, path connected,
and locally simply connected topological space is finitely generated.
-/

theorem fundamental_group_of_compact_path_connected_locally_simply_connected_is_fg
  {X : Type*} [TopologicalSpace X] [CompactSpace X] [PathConnectedSpace X]
  (h_locally_simply_connected : ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ SimplyConnectedSpace (Subtype U))
  (x0 : X) :
  ∃ S : Set (FundamentalGroup X x0), Set.Finite S ∧ Subgroup.closure (S : Set (FundamentalGroup X x0)) = (⊤ : Subgroup (FundamentalGroup X x0)) := by sorry
