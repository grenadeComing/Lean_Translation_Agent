import Mathlib

/-- Let n>0 be an integer and let a,b ∈ Z. Prove that a ≡ b mod n iff a and b have the same remainder upon division by n. -/
theorem modEq_iff_mod_eq_tac_26040 (n : ℤ) (hn : 0 < n) (a : ℤ) (b : ℤ) : a ≡ b [ZMOD n] ↔ a % n = b % n := by sorry
