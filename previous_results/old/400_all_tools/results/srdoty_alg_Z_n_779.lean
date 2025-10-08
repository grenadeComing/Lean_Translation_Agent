import Mathlib

/-- Let n > 0 be an integer and let a, b be integers. Prove that a ≡ b (mod n) if and only if a and b have the same remainder upon division by n. -/
theorem modEq_iff_mod_eq_int {a b n : ℤ} (hn : 0 < n) : a ≡ b [ZMOD n] ↔ a % n = b % n := by sorry
