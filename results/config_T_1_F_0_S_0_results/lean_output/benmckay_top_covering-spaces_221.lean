import Mathlib

/-- If a topological group Γ acts continuously on a topological space X and the quotient π : X → Y = X/Γ is continuous, surjective, has fibres equal to Γ-orbits, and Y is compact, then every orbit Γ · x contains a point y whose stabilizer {g : Γ | g • y = y} is compact, and moreover there exists a compact set K ⊆ X meeting every Γ-orbit. -/
lemma exists_point_with_compact_stabilizer_and_compact_transversal
  {Γ X Y : Type _} [Group Γ] [TopologicalSpace Γ] [TopologicalSpace X] [TopologicalSpace Y]
  [MulAction Γ X] [ContinuousSMul Γ X]
  (π : X → Y) (hπ : Continuous π) (hπ_surj : Surjective π)
  (hπ_orbit : ∀ (x x' : X), π x = π x' ↔ ∃ g : Γ, g • x = x') (hY : CompactSpace Y) :
  (∀ x : X, ∃ y : X, (∃ g : Γ, g • x = y) ∧ IsCompact ({g : Γ | g • y = y} : Set Γ)) ∧
  ∃ (K : Set X), IsCompact K ∧ ∀ x : X, Nonempty (K ∩ {g • x | g : Γ}) := by sorry