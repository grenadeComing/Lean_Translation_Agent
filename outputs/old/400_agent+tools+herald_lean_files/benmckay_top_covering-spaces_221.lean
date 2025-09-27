import Mathlib

/-!
If a group Γ acts on a topological space X and X/Γ is compact, prove that every orbit Γ x ⊆ X
contains a point x with compact stabilizer, and moreover that X contains a compact set
intersecting every Γ-orbit.
-/

open MulAction Set

variable (Γ : Type*) [Group Γ]
variable (X : Type*) [TopologicalSpace X]
variable [MulAction Γ X]

/-- If the orbit space X/Γ is compact, then for every orbit there is a point whose stabilizer is
compact (as a subset of Γ), and there exists a compact subset K ⊆ X meeting every orbit. -/
theorem compact_orbit_space_implies_compact_stabilizer_and_compact_fundamental_set
  {Γ : Type*} [Group Γ] [TopologicalSpace Γ] [IsTopologicalGroup Γ]
  {X : Type*} [TopologicalSpace X] [MulAction Γ X] [ContinuousSMul Γ X]
  (h : CompactSpace (Quotient (MulAction.orbitRel Γ X))) :
  (∀ x : X, ∃ y ∈ MulAction.orbit Γ x, IsCompact ((MulAction.stabilizer Γ y : Set Γ))) ∧
  ∃ (K : Set X), IsCompact K ∧ ∀ x : X, (K ∩ MulAction.orbit Γ x).Nonempty := by sorry
