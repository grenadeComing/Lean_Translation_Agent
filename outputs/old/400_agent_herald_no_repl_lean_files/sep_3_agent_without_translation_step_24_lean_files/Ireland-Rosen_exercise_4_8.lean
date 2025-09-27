import Mathlib

open Nat

/-- Let p be an odd prime. Show that a is a primitive root modulo p iff
    a^{(p-1) / q} ≠ 1 (mod p) for all prime divisors q of p-1. -/
theorem Ireland_Rosen_exercise_4_8 (p : ℕ) (hp : p.Prime) (hpodd : p ≠ 2) (a : ZMod p) :
  IsPrimitiveRoot a (p - 1) ↔ ∀ q : ℕ, q.Prime → q ∣ (p - 1) → a ^ ((p - 1) / q) ≠ (1 : ZMod p) := by
  sorry
