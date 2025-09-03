import Mathlib

/-!
Exercise: Prove that the intersection of any collection of subspaces of V is a subspace of V.
We state this in the language of mathlib as: for a field K and K-module V, for any set S of
submodules of V there exists a submodule whose underlying set equals the intersection of the
underlying sets of the submodules in S. The proof is omitted (:= by sorry) as requested.
-/

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V]

theorem intersection_of_subspaces_is_subspace (S : Set (Submodule K V)) :
  ∃ W : Submodule K V, (W : Set V) = ⋂ s ∈ S, (s : Set V) := by sorry
