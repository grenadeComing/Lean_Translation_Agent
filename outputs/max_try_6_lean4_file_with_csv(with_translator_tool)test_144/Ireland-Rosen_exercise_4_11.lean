import Mathlib

open Finset

/-- Exercise: For a prime p and natural k, the sum of k-th powers of 1..p-1 modulo p
    is 0 if (p-1) ∤ k and -1 if (p-1) ∣ k. -/
theorem ireland_rosen_exercise_4_11 (p k : ℕ) (hp : Nat.Prime p) :
  ((Finset.range p).erase 0).sum (fun i => (i : ZMod p) ^ k) =
  if (p - 1) ∣ k then (-1 : ZMod p) else 0 := by sorry
