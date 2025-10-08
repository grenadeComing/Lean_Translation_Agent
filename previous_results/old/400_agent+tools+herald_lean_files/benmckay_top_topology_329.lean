import Mathlib

variable {X : Type*} [TopologicalSpace X] {A : Set X}

/-- A set s in the subspace A is closed (w.r.t. the subspace topology) iff
    it is the preimage of a closed set in X under the inclusion `coe : Subtype A → X`. -/
theorem isClosed_in_subspace_iff {s : Set (Subtype A)} :
  IsClosed (s : Set (Subtype A)) ↔ ∃ C : Set X, IsClosed C ∧ s = (coe : Subtype A → X) ⁻¹' C := by sorry

/-- The closure of S inside the subspace A equals the preimage under the inclusion
    of the closure of the image of S in X. -/
theorem closure_in_subspace_preimage {S : Set (Subtype A)} :
  closure (S : Set (Subtype A)) = (coe : Subtype A → X) ⁻¹' (closure ((coe : Subtype A → X) '' S)) := by sorry
