import Mathlib

/-- Let n be a fixed positive integer and let a,b,c be integers. Show that if a ≡ b (mod n) and b ≡ c (mod n), then a ≡ c (mod n). -/
theorem trans_ext {n a b c : ℤ} (h1 : a ≡ b [ZMOD n]) (h2 : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by sorry
