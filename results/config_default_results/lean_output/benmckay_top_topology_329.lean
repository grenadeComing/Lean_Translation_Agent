import Mathlib

variable {X : Type _} [TopologicalSpace X]

/-- For a subset A of X, closed sets in the subspace A correspond to intersections A ∩ C for closed C in X. -/
theorem is_closed_subtype_iff {A : Set X} {S : Set (Subtype A)} :
  IsClosed S ↔ ∃ C : Set X, IsClosed C ∧ S = Subtype.val ⁻¹' C := by sorry

/-- The closure of S in the subspace A equals the preimage under the inclusion of the closure of the image of S in X. -/
theorem closure_subtype_eq_inter_closure {A : Set X} {S : Set (Subtype A)} :
  closure (S : Set (Subtype A)) = Subtype.val ⁻¹' closure (Subtype.val '' S) := by sorry
