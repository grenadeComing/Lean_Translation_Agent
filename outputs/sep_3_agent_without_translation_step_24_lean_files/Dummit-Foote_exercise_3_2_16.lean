import Mathlib

/-- Fermat's Little Theorem: for a prime p and any integer a, a^p ≡ a (mod p). -/
theorem fermats_little_theorem (p : ℕ) (hp : Nat.Prime p) (a : ℤ) : (a : ZMod p) ^ p = (a : ZMod p) := by
  sorry
