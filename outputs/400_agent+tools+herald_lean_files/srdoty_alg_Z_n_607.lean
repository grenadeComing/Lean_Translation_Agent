import Mathlib

/-- Let n be a fixed positive integer and let a,b,c ∈ ℤ.
    If a ≡ b (mod n) and b ≡ c (mod n), then a ≡ c (mod n). -/
theorem srdoty_alg_Z_n_607 (n : ℤ) (n_pos : 0 < n) (a b c : ℤ)
  (hab : a ≡ b [ZMOD n]) (hbc : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by sorry
