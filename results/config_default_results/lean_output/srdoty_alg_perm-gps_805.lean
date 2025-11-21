import Mathlib

/-- Let n ≥ 1 and let S_n be the symmetric group on {1, …, n}.
    Every factorization of the identity permutation as a product of transpositions
    uses an even number of transpositions. -/
theorem id_product_of_transpositions_even (n : ℕ) (hn : 1 ≤ n) :
  ∀ (ts : List (Equiv.Perm (Fin n))),
    List.Forall (fun τ => ∃ i j : Fin n, τ = Equiv.swap i j) ts →
    ts.prod = (Equiv.refl (Fin n)) → ts.length % 2 = 0 := by sorry
