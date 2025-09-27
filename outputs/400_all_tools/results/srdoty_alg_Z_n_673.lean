import Mathlib


/-- Let n be a fixed positive integer and let a, b, c, d be integers. Suppose that a ≡ b (mod n) and c ≡ d (mod n). Show that ac ≡ bd (mod n). -/
theorem mul_modEq_mul {a b c d n : ℤ} (h1 : a ≡ b [ZMOD n]) (h2 : c ≡ d [ZMOD n]) :
    a * c ≡ b * d [ZMOD n] := by sorry
