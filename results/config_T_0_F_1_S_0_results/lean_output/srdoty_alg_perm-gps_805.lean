import Mathlib

/-!
Let n ≥ 1 and let S_n be the symmetric group on {1,...,n}. Show that every factorization
of the identity permutation id as a product of transpositions uses an even number of transpositions.
-/

theorem srdoty_alg_perm_gps_805 (n : Nat) (hn : n ≥ 1) :
  ∀ (t : List (Equiv.Perm (Fin n))),
    List.prod t = 1 →
    (∀ s ∈ t, ∃ a b : Fin n, a ≠ b ∧ s = Equiv.swap a b) →
    ∃ m : Nat, t.length = 2 * m := by sorry
