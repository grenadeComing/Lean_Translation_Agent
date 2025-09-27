import Mathlib


/-- Let n be a fixed positive integer and let a,b,c,d ∈ ℤ with a ≡ b (mod n) and c ≡ d (mod n). Prove that a+c ≡ b+d (mod n) and ac ≡ bd (mod n). -/
theorem add_and_mul {a b c d n : ℤ} (hn : n > 0) (hab : a ≡ b [ZMOD n]) (hcd : c ≡ d [ZMOD n]) :
  a + c ≡ b + d [ZMOD n] ∧ a * c ≡ b * d [ZMOD n] := by sorry
