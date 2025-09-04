import Mathlib

variables {G : Type _} [Group G] [TopologicalSpace G] [TopologicalGroup G]
  {X : Type _} [TopologicalSpace X] [MulAction G X] [ContinuousMulAction G X]
  {Y : Type _} [TopologicalSpace Y]

variable (π : X → Y) (h_cont : Continuous π) (h_surj : Surjective π)
  (h_compact : CompactSpace Y) (h_fiber : ∀ x, π ⁻¹' ({π x} : Set Y) = MulAction.orbit G x)

theorem exists_point_with_compact_stabilizer_and_compact_transversal :
  (∀ x : X, ∃ x' ∈ MulAction.orbit G x, IsCompact ({g : G | g • x' = x'})) ∧
  ∃ K : Set X, IsCompact K ∧ ∀ x : X, Set.Nonempty (K ∩ MulAction.orbit G x) := by
  sorry
