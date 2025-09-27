import Mathlib

/-- Let n be a fixed positive integer and let a, b, c be integers. If a ≡ b (mod n)
    and b ≡ c (mod n), then a ≡ c (mod n). -/
theorem modeq_trans {n : ℕ} {a b c : ℤ} (hn : 0 < n) (h1 : a ≡ b [ZMOD n]) (h2 : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by sorry
