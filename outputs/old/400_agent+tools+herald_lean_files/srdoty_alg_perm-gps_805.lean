import Mathlib

open Equiv

/-- Let n ≥ 1 and let S_n be the symmetric group on {1, ..., n}.
    Every factorization of the identity permutation as a product of transpositions
    uses an even number of transpositions. -/
theorem transposition_factorization_identity_even (n : ℕ) (hn : 1 ≤ n) :
  ∀ (l : List (Equiv.Perm (Fin n))),
    l.prod = (1 : Equiv.Perm (Fin n)) →
    (∀ σ ∈ l, ∃ (i j : Fin n), i ≠ j ∧ σ = Equiv.swap i j) →
    ∃ m : ℕ, l.length = 2 * m := by sorry
