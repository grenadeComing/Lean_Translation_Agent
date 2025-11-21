import Mathlib

/-!
Two statements about the subspace topology for A ⊆ X.
1. Closed sets in the subspace are exactly preimages under the coercion of closed sets in X.
2. The closure of a subset of the subspace equals the preimage under the coercion of the closure
   of its image in X (equivalently A ∩ closure_X of the original subset seen as subset of X).
-/

variable {X : Type*} [TopologicalSpace X]

theorem subspace_isClosed_iff {A : Set X} (S : Set (Subtype A)) :
  IsClosed S ↔ ∃ C : Set X, IsClosed C ∧ S = (fun x : Subtype A => (x : X)) ⁻¹' C :=
  by sorry

theorem subspace_closure_eq_inter_closure {A : Set X} (S : Set (Subtype A)) :
  closure S = (fun x : Subtype A => (x : X)) ⁻¹' (closure ((fun x : Subtype A => (x : X)) '' S)) :=
  by sorry
