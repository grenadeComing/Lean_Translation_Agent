import Mathlib

/-- Let n be a fixed positive integer and let a, b, c, d : ℤ. Suppose a ≡ b (mod n) and c ≡ d (mod n). Then ac ≡ bd (mod n). -/
theorem mul_ext {n : ℕ} {a b c d : ℤ} (h1 : a ≡ b [ZMOD n]) (h2 : c ≡ d [ZMOD n]) : a * c ≡ b * d [ZMOD n] := by
  sorry
