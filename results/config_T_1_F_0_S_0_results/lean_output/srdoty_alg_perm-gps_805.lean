import Mathlib

/-- Let n ≥ 1 and let S_n be the symmetric group on {1,…,n}.
    Every factorization of the identity permutation as a product of transpositions
    uses an even number of transpositions. -/
theorem identity_factorization_even (n : ℕ) (hn : 1 ≤ n) :
  ∀ (l : List (Fin n × Fin n)),
    (l.map fun p => Equiv.swap p.fst p.snd).prod = (1 : Perm (Fin n)) ->
    Even l.length := by sorry