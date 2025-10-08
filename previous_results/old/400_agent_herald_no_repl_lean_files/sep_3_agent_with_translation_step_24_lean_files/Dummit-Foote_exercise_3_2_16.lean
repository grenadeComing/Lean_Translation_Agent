import Mathlib

/-- Use Lagrange's Theorem in the multiplicative group `(Z / p Z)^×` to prove Fermat's Little Theorem:
if `p` is a prime then `a^p ≡ a (mod p)` for all `a : ℤ`. -/
theorem pow_prime_eq_one (p : ℕ) [Fact p.Prime] (a : ℤ) : a ^ p ≡ a [ZMOD p] := by sorry
