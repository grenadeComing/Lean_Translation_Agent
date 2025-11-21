import Mathlib

open MulAction

theorem exists_point_with_compact_stabilizer_and_compact_transversal {G : Type*} {X : Type*}
  [Group G] [TopologicalSpace G] [TopologicalSpace X] [MulAction G X] [ContinuousSMul G X] :
  CompactSpace (Quotient (MulAction.orbitRel G X)) ->
  (∀ x : X, ∃ y : X, y ∈ MulAction.orbit G x ∧ IsCompact (MulAction.stabilizer G y : Set G)) ∧
  ∃ (K : Set X), IsCompact K ∧ ∀ x : X, (MulAction.orbit G x) ∩ K ≠ ∅ :=
by sorry