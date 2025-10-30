import Mathlib

/-- Let n be a fixed positive integer and let a,b,c,d ∈ ℤ with a ≡ b [ZMOD n] and c ≡ d [ZMOD n]. Prove that a+c ≡ b+d [ZMOD n] and ac ≡ bd [ZMOD n]. -/
theorem add_and_mul {a b c d : ℤ} (h1 : a ≡ b [ZMOD n]) (h2 : c ≡ d [ZMOD n]) :
  a + c ≡ b + d [ZMOD n] ∧ a * c ≡ b * d [ZMOD n] := by sorry
