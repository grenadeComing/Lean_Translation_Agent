import Mathlib
open Equiv Function Fintype Finset

/-- For n ≥ 1, for any list l : List (Equiv.Perm (Fin n)), if every element g in l is a transposition
(i.e., there exist a ≠ b such that g = Equiv.swap a b), and l.prod = 1 (the identity permutation),
then l.length is even. -/
theorem even_length_of_prod_eq_one_of_isSwap {n : ℕ} (hn : 1 ≤ n) {l : List (Equiv.Perm (Fin n))}
    (hl : ∀ g : Equiv.Perm (Fin n), g ∈ l → ∃ (a b : Fin n), a ≠ b ∧ g = Equiv.swap a b) (h : l.prod = 1) :
    Even l.length := by sorry
