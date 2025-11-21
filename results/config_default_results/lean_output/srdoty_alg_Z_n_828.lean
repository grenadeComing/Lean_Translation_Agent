import Mathlib
open Function

/-- Let n be a fixed positive integer and let a,b,c,d be integers with a ≡ b (mod n) and c ≡ d (mod n). Prove that a+c ≡ b+d (mod n) and ac ≡ bd (mod n). -/
theorem add_mul_congr_mod {n a b c d : ℤ} (h1 : a ≡ b [ZMOD n]) (h2 : c ≡ d [ZMOD n]) :
    a + c ≡ b + d [ZMOD n] ∧ a * c ≡ b * d [ZMOD n] := by sorry
