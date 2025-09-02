import Mathlib

open Finset

/-- Exercise 4.11 (Ireland & Rosen).
For a prime p and k : ℕ, the sum 1^k + 2^k + ... + (p-1)^k in Z/pZ is 0 if (p-1) ∤ k and -1 if (p-1) ∣ k. -/
theorem ireland_rosen_exercise_4_11 (p k : ℕ) (hp : p.Prime) :
  (∑ i in (Finset.range p).erase 0, (i : ZMod p) ^ k) = if (p - 1) ∣ k then (-1 : ZMod p) else 0 := by sorry
