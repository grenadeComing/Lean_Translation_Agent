import Mathlib

open TopologicalSpace Set MulAction

/-- Let Γ be a topological group acting on a topological space X. Suppose the quotient X/Γ is compact.
Then (1) for every x in X there is a point in the orbit Γ • x whose stabilizer subgroup in Γ is compact; 
(2) there exists a compact set K ⊆ X which intersects every Γ-orbit. -/

theorem exists_compact_set_intersecting_orbit_compact_stabilizer_of_compact_quotient
  {Γ : Type*} {X : Type*} [Group Γ] [TopologicalSpace Γ] [IsTopologicalGroup Γ]
  [TopologicalSpace X] [MulAction Γ X]
  [TopologicalSpace (Quotient (MulAction.orbitRel Γ X))]
  (h : CompactSpace (Quotient (MulAction.orbitRel Γ X))) :
  (∀ x : X, ∃ y ∈ MulAction.orbit Γ x, IsCompact ((MulAction.stabilizer Γ y : Subgroup Γ) : Set Γ)) ∧
  ∃ K : Set X, IsCompact K ∧ ∀ x : X, ∃ g : Γ, g • x ∈ K := by sorry
