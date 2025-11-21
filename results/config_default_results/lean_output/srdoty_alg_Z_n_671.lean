import Mathlib

/-- Let n be a fixed positive integer and let a,b,c,d ∈ ℤ. Suppose that a ≡ b (mod n) and c ≡ d (mod n). Show that a+c ≡ b+d (mod n). -/
theorem add_congr_mod {n a b c d : ℤ} (hn : 0 < n) (hab : a ≡ b [ZMOD n]) (hcd : c ≡ d [ZMOD n]) :
  a + c ≡ b + d [ZMOD n]  := by sorry
