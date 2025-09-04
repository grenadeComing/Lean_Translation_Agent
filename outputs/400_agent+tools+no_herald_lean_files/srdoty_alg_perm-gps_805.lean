import Mathlib

open Equiv

/--
Let n ≥ 1 and S_n be the symmetric group on {1,...,n}.
Every factorization of the identity permutation as a product of transpositions
uses an even number of transpositions.
-/
theorem swaps_of_id_have_even_length {n : ℕ} (hn : 1 ≤ n) :
  ∀ (l : List (Equiv.Perm (Fin n))),
    (∀ τ ∈ l, ∃ x y : Fin n, x ≠ y ∧ τ = Equiv.swap x y) →
    l.prod = (1 : Equiv.Perm (Fin n)) →
    Even l.length := by
  sorry
