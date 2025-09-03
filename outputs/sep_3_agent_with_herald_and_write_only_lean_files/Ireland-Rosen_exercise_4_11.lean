import Mathlib

open BigOperators

/--
Ireland & Rosen, Exercise 4.11:
For a prime p and k : ℕ, the sum of k-th powers of the nonzero residues modulo p
satisfies

  ∑_{a=1}^{p-1} a^k ≡ 0 (mod p)    if (p-1) ∤ k,
  ∑_{a=1}^{p-1} a^k ≡ -1 (mod p)   if (p-1) ∣ k.

This file only states the theorem; the proof is omitted (``:= by sorry'').
-/

theorem ireland_rosen_exercise_4_11 (p k : ℕ) (hp : p.Prime) :
  (if (p - 1) ∣ k
   then ∑ a in (Finset.range p).erase 0, ((a : ZMod p) ^ k) = (-1 : ZMod p)
   else ∑ a in (Finset.range p).erase 0, ((a : ZMod p) ^ k) = 0) := by
  sorry
