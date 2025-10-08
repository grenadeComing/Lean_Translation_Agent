import Mathlib

/-
If A ⊆ X is a subset of a topological space X, then the closed subsets of A in the subspace topology
are exactly the sets A ∩ C for any closed set C ⊆ X. Moreover, the closure of a subset S ⊆ A inside A
is the intersection of A with the closure of S in X.
-/

variable {X : Type _} [TopologicalSpace X]

theorem isClosed_subtype_iff {A : Set X} {s : Set (Subtype A)} :
  IsClosed s ↔ ∃ C : Set X, IsClosed C ∧ s = Subtype.val ⁻¹' C := by sorry

theorem closure_subtype_eq_preimage_closure {A : Set X} {S : Set (Subtype A)} :
  closure (S : Set (Subtype A)) = Subtype.val ⁻¹' closure (Subtype.val '' S) := by sorry
