import Mathlib

/-- Let n>0 be an integer and let a,b in Z. Prove that a ≡ b (mod n) iff a and b have the same remainder upon division by n. -/
theorem mod_eq_iff_mod_eq_remainder (n : Int) (hn : 0 < n) (a b : Int) : a ≡ b [ZMOD n] ↔ a % n = b % n := by sorry
