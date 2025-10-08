import Mathlib

/-- Let n > 0 be a natural number and a, b : ℤ. Prove that a ≡ b [ZMOD n] iff a % n = b % n. -/
 theorem zmod_iff_remainder_eq (n : ℕ) (h : 0 < n) (a b : ℤ) : a ≡ b [ZMOD n] ↔ a % n = b % n := by
  -- proof goes here
  sorry
