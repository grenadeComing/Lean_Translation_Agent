import Mathlib

open Polynomial

/-- Herstein exercise 4.5.25: If p is a prime, the polynomial q(x) = 1 + x + x^2 + ... + x^{p-1} is irreducible in Q[x]. -/
theorem herstein_exercise_4_5_25 (p : Nat) (hp : Nat.Prime p) :
  Irreducible ((Finset.sum (Finset.range p) fun i => Polynomial.X ^ i) : Polynomial Rat) := by
  sorry
