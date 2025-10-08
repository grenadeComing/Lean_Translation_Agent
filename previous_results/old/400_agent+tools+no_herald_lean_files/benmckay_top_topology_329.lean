import Mathlib

universe u

variable {X : Type u} [TopologicalSpace X] {A : Set X}

/-- If A ⊆ X, the closed subsets of A (with the subspace topology) are exactly the sets A ∩ C for C closed in X. -/
theorem isClosed_subspace_iff {S : Set (Subtype A)} :
  IsClosed S ↔ ∃ C : Set X, IsClosed C ∧ S = {a : Subtype A | (a : X) ∈ C} := by
  sorry

/-- The closure of S ⊆ A inside A equals the intersection of A with the closure of S in X. -/
theorem closure_subspace {S : Set (Subtype A)} :
  closure S = {a : Subtype A | (a : X) ∈ closure ((coe : Subtype A → X) '' S)} := by
  sorry
