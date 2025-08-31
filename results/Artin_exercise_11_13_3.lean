import Mathlib
open Finset
open scoped Polynomial
open Polynomial
open Polynomial
open Polynomial
open FiniteField Polynomial
open scoped Nat
open ZMod
open FiniteField
open Polynomial

/-- Prove that there are infinitely many primes congruent to $-1$ (modulo $4$). -/
theorem infinite_set_of_prime_congruent_neg_one_mod_four :
    { p : ℕ | p.Prime ∧ p ≡ -1 [ZMOD 4] }.Infinite := sorry