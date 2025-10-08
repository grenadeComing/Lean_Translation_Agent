import Mathlib

variable {X : Type _} [TopologicalSpace X]
variable {A : Set X}

/-- A subset of the subspace is closed iff it is the preimage (under the inclusion) of a closed
subset of the ambient space. This is the usual description of closed sets in the subspace
(topological) topology. -/
theorem is_closed_induced_iff {s : Set A} : IsClosed (s : Set A) ↔ ∃ C : Set X, IsClosed C ∧ s = (coe : A → X) ⁻¹' C :=
  by sorry

/-- The closure of a set S in the subspace A equals the preimage (under the inclusion) of the
closure (in X) of the image of S. Equivalently (as sets of X) this says closure_A S = A ∩ closure_X S. -/
theorem closure_induced_eq {S : Set A} : closure (S : Set A) = (coe : A → X) ⁻¹' (closure ((coe : A → X) '' S)) :=
  by sorry
