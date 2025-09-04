import Mathlib

/--
Let n be a fixed positive integer and let a,b,c,d ∈ ℤ. Suppose that a ≡ b (mod n) and c ≡ d (mod n).
Show that ac ≡ bd (mod n).
-/
theorem srdoty_alg_Z_n_673 (n : ℤ) (hn : 0 < n) {a b c d : ℤ}
  (h1 : a ≡ b [ZMOD n]) (h2 : c ≡ d [ZMOD n]) : a * c ≡ b * d [ZMOD n] := by sorry
