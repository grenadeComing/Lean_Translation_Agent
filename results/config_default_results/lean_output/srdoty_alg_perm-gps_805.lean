import Mathlib

open Equiv

/--
Let n ≥ 1 and S_n be the symmetric group on Fin n. Show that every factorization
of the identity permutation id as a product of transpositions uses an even number of transpositions.
-/
theorem id_is_product_of_swaps_even_length {n : ℕ} (h : 1 ≤ n) :
  ∀ (l : List (Perm (Fin n))),
    (∀ p ∈ l, ∃ i j : Fin n, i ≠ j ∧ p = Equiv.swap i j) →
    l.foldl (fun a p => a * p) (1 : Perm (Fin n)) = 1 →
    l.length % 2 = 0 := by
  intro l hl hprod
  -- placeholder
  sorry
