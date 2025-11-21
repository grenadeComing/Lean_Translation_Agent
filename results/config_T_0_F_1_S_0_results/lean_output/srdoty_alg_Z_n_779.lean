import Mathlib

/-!
Let n>0 be an integer and let a,b ∈ ℤ. Prove that a ≡ b (mod n)
iff a and b have the same remainder upon division by n.
This file states the theorem (no proof).
-/

theorem srdoty_alg_Z_n_779 (n a b : Int) (hn : 0 < n) :
  Int.ModEq n a b ↔
  ∃ r : Int, 0 ≤ r ∧ r < n ∧ ∃ q1 q2 : Int, a = n * q1 + r ∧ b = n * q2 + r :=
by sorry
