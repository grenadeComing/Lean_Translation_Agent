import Mathlib

/-!
Let n ≥ 1 and let S_n be the symmetric group on {1, ..., n}.
Every factorization of the identity permutation as a product of transpositions
uses an even number of transpositions.
-/

theorem transpositions_factorization_even {n : ℕ} (hn : 1 ≤ n) :
  ∀ (l : List {p : Fin n × Fin n // p.1 ≠ p.2}),
    (l.map fun s => (Equiv.swap (s.1.1) (s.1.2) : Perm (Fin n))).prod = (1 : Perm (Fin n)) →
    Even l.length := by sorry
