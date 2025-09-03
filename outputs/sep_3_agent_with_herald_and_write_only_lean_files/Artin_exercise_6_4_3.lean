import Mathlib

/-!
Artin, Algebra (exercise 6.4.3)
Statement: Prove that no group of order p^2 * q (p, q primes) is simple.
This file states the result in Lean. The proof is omitted ("by sorry").
-/-

open Nat

theorem Artin_exercise_6_4_3 {G : Type _} [Group G] [Fintype G] {p q : ℕ}
  (hp : p.Prime) (hq : q.Prime) (hcard : Fintype.card G = p ^ 2 * q) :
  ∃ H : Subgroup G, H ≠ ⊥ ∧ H ≠ ⊤ ∧ H.normal := by sorry
