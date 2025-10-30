import Mathlib


/-- Let n be a fixed positive integer and let a,b,c,d ∈ ℤ. Suppose that a ≡ b (mod n) and c ≡ d (mod n). Show that a+c ≡ b+d (mod n). -/
theorem add_ext {a b c d : ℤ} {n : ℕ} (h1 : a ≡ b [ZMOD n]) (h2 : c ≡ d [ZMOD n]) :
  a + c ≡ b + d [ZMOD n] := by sorry
