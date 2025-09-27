import Mathlib

/-- Define what it means to be a primitive root modulo a prime p: the element has order p-1. -/
def is_primitive_root_mod {p : ℕ} (hp : p.Prime) (a : ZMod p) : Prop :=
  a ^ (p - 1) = 1 ∧ ∀ d, d ∣ (p - 1) → d < p - 1 → a ^ d ≠ 1

/-- Ireland-Rosen Exercise 4.8:
    Let p be an odd prime. Show that a is a primitive root modulo p iff
    a^{(p-1)/q} ≠ 1 (mod p) for all prime divisors q of p-1. -/
theorem ireland_rosen_exercise_4_8 {p : ℕ} (hp : p.Prime) (hp_odd : p ≠ 2) (a : ZMod p) :
  is_primitive_root_mod hp a ↔ ∀ q : ℕ, q.Prime → q ∣ (p - 1) → a ^ ((p - 1) / q) ≠ 1 := by sorry
