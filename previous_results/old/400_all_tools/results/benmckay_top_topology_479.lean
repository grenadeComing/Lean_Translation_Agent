import Mathlib

/-- Product is compact iff each factor is compact. -/
theorem compact_space_pi_iff {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)] :
  CompactSpace (∀ i, X i) ↔ ∀ i, CompactSpace (X i) := by sorry
