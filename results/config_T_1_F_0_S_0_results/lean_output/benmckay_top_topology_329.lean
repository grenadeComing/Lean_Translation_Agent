import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X] (A : Set X)

/-- A set S in the subspace A is closed (with the subspace topology) iff there exists a closed C ⊆ X
such that S = coe ⁻¹' C (equivalently S = A ∩ C). -/
theorem is_closed_subspace_iff {S : Set (↥A)} :
  IsClosed (S : Set (↥A)) ↔ ∃ (C : Set X), IsClosed (C : Set X) ∧ S = coe ⁻¹' C := by sorry

/-- The closure of S in the subspace A equals the preimage under the inclusion of the closure
of the image of S in X: closure_A S = coe ⁻¹' (closure_X (coe '' S)). -/
theorem closure_subspace_eq {S : Set (↥A)} :
  closure (S : Set (↥A)) = coe ⁻¹' (closure (coe '' S) : Set X) := by sorry