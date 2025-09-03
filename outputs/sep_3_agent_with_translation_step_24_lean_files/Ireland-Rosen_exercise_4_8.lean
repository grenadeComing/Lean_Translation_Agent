import Mathlib

/-- Let p be an odd prime. Show that a is a primitive root modulo p iff
    a^{(p-1)/q} ≠ 1 (mod p) for all prime divisors q of p-1. -/
theorem Ireland_Rosen_exercise_4_8 (p : ℕ) (hp : Prime p) (hp2 : p ≠ 2) (a : ℤ)
  (ha : (a : ZMod p) ≠ 0) :
  IsPrimitiveRoot (a : ZMod p) (p - 1) ↔
    ∀ q : ℕ, Prime q → q ∣ p - 1 → (a : ZMod p) ^ ((p - 1) / q) ≠ 1 := by
  sorry
