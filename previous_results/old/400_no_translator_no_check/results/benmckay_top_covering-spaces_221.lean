import Mathlib

-- If a group Γ acts on a topological space X and X/Γ is compact, then every orbit Γ x ⊂ X
-- contains a point x' with compact stabilizer, and moreover X contains a compact set intersecting
-- every Γ-orbit.

variable {G : Type _} [Group G] [TopologicalSpace G]
variable {X : Type _} [TopologicalSpace X] [MulAction G X] [ContinuousSMul G X]
variable {Y : Type _} [TopologicalSpace Y]

variable (pi : X → Y) (hpi_cont : Continuous pi) (hpi_surj : Function.Surjective pi)
variable (hpi_fibers : ∀ x y : X, pi x = pi y ↔ ∃ g : G, g • x = y)
variable (hY_compact : IsCompact (Set.univ : Set Y))

theorem exists_rep_with_compact_stabilizer_and_compact_transversal :
  (∀ x : X, ∃ x' ∈ MulAction.orbit G x, IsCompact (MulAction.stabilizer G x' : Set G)) ∧
  ∃ K : Set X, IsCompact K ∧ ∀ x, (MulAction.orbit G x ∩ K).Nonempty := by
  -- proof omitted
  sorry
