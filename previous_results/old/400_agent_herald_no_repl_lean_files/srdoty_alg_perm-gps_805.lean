import Mathlib
open Equiv Equiv.Perm

/-- Let n ≥ 1 and consider the symmetric group on `Fin n` (the set {0,...,n-1}).
    Any factorization of the identity permutation as a product of transpositions
    uses an even number of transpositions. -/
theorem identity_fact_as_transpositions_even {n : ℕ} (hn : 1 ≤ n) (ts : List (Perm (Fin n)))
  (htrans : ∀ t ∈ ts, ∃ i j, t = swap i j) (hprod : ts.prod = (1 : Perm (Fin n))) :
  ts.length % 2 = 0 := by sorry
