import Mathlib

open Equiv

variable {A : Type*} [Fintype A]

/-- A subgroup G of permutations of A acts transitively if for any a b in A there is g in G with g a = b. -/
def IsTransitive (G : Subgroup (Perm A)) : Prop :=
  ∀ a b : A, ∃ g : Perm A, g ∈ G ∧ g a = b

/-- If a subgroup G of permutations of a finite set A with |A| > 1 acts transitively,
    then G contains a derangement (a permutation with no fixed points). -/
theorem exists_derangement_of_transitive (G : Subgroup (Perm A))
  (htrans : IsTransitive G) (hne : Fintype.card A > 1) :
  ∃ σ : Perm A, σ ∈ G ∧ ∀ a : A, σ a ≠ a := by
  sorry
