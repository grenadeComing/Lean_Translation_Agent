import Mathlib

/-
If a group Γ acts on a topological space X and X/Γ is compact, then every orbit Γ x ⊆ X
contains a point x with compact stabilizer, and moreover X contains a compact set
intersecting every Γ-orbit.

We formulate this by assuming a quotient map q : X → Y exhibiting Y as the orbit
space (q x = q y ↔ ∃ g, g • x = y) and Y compact.
-/

variable {Γ : Type*} [Group Γ] [TopologicalSpace Γ]
variable {X : Type*} [TopologicalSpace X] [MulAction Γ X]
variable {Y : Type*} [TopologicalSpace Y] [CompactSpace Y]

/-- The stabilizer of a point x : X as a subset of Γ. -/
def stabilizer (x : X) : Set Γ := { g | g • x = x }

/-- Main statement: with a quotient map q : X → Y exhibiting Y as the orbit space,
each orbit contains a point with compact stabilizer, and there is a compact subset of X
meeting every orbit. -/
theorem exists_point_with_compact_stabilizer_and_compact_transversal
  (q : X → Y) (hq_cont : Continuous q) (hq_surj : Surjective q)
  (hq_orbit : ∀ x y, q x = q y ↔ ∃ g : Γ, g • x = y) :
  (∀ x : X, ∃ y : X, (∃ g : Γ, g • x = y) ∧ IsCompact (stabilizer y)) ∧
  ∃ (K : Set X), IsCompact K ∧ ∀ x : X, ∃ y ∈ K, ∃ g : Γ, g • x = y := by sorry
