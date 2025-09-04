import Mathlib

/-!
# Factorizations of the identity in the symmetric group

We state that for n ≥ 1, every expression of the identity permutation on `Fin n` as a product
of transpositions uses an even number of transpositions.
-/

theorem identity_factorization_even_transpositions {n : Nat} (n_pos : 1 ≤ n) :
  ∀ (l : List (Equiv.Perm (Fin n))),
    (∀ p ∈ l, ∃ (i j : Fin n), i ≠ j ∧ p = Equiv.Perm.swap i j) →
    List.prod l = (1 : Equiv.Perm (Fin n)) →
    l.length % 2 = 0 := by sorry
