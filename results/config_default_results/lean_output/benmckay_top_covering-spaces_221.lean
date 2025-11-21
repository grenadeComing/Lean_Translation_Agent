import Mathlib

variable {u v : Level}
variable {G : Type u} [Monoid G] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
variable {X : Type v} [TopologicalSpace X] [SMul G X] [MulAction G X] [ContinuousSMul G X]

open MulAction Set

/-- The stabilizer of a point x : X as a subset of G. -/
def stabilizer (x : X) : Set G := { g : G | g • x = x }

/-- If Γ acts continuously on X and the quotient X/Γ is compact, then
1) every orbit contains a point with compact stabilizer, and
2) there is a compact subset of X meeting every orbit. -/
theorem exists_compact_stabilizer_and_cross_section
  (h : CompactSpace (Quotient (MulAction.orbitRel G X))) :
  (∀ x : X, ∃ y : X, y ∈ MulAction.orbit G x ∧ IsCompact ((stabilizer : X → Set G) y)) ∧
  ∃ K : Set X, IsCompact K ∧ ∀ x : X, ∃ g : G, g • x ∈ K := by sorry