import Mathlib

/-!
# Infinitely many primes congruent to -1 mod 4

We state the classical result: there are infinitely many primes p with p ≡ -1 (mod 4).
We provide the statement only; the proof is omitted (``by sorry'').
-/

open Nat

theorem infinitely_many_primes_eq_neg_one_mod_four :
  ∀ n : Nat, ∃ p : Nat, p > n ∧ Prime p ∧ p % 4 = 3 := by sorry
