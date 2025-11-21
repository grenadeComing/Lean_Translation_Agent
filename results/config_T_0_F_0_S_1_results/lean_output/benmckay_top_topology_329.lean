import Mathlib

variable {X : Type _} [TopologicalSpace X] {A : Set X}

/-- The closed subsets of the subspace `A` (viewed as `Subtype A`) are exactly the preimages
of closed sets in `X` under the coercion `coe : Subtype A → X`. Equivalently, they are the
sets of the form `coe ⁻¹' C`, i.e. `A ∩ C` for some closed `C ⊆ X`. -/
lemma closed_subsets_of_subspace_eq_inter_closed {s : Set (Subtype A)} :
  IsClosed s ↔ ∃ C : Set X, IsClosed C ∧ s = (coe : Subtype A → X) ⁻¹' C := by sorry

/-- The closure of a subset `S` of the subspace `A` is the preimage under `coe` of the closure
in `X` of the image of `S`. Concretely, `closure (S : Set (Subtype A)) = (coe ⁻¹' (closure (coe '' S)))`,
which corresponds to `A ∩ closure_X (S)` when viewed as a subset of `X`. -/
lemma closure_in_subspace_eq_inter_closure {S : Set (Subtype A)} :
  closure S = (coe : Subtype A → X) ⁻¹' closure ((coe : Subtype A → X) '' S) := by sorry