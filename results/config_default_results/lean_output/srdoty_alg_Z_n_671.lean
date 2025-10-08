import Mathlib

/--
Let n be a fixed positive integer and a,b,c,d ∈ ℤ. Suppose a ≡ b (mod n) and c ≡ d (mod n).
Show that a+c ≡ b+d (mod n).
-/
theorem zmod_add_congr (n : ℕ) {a b c d : ℤ} (ha : a ≡ b [ZMOD n]) (hc : c ≡ d [ZMOD n]) :
  a + c ≡ b + d [ZMOD n] := by
  sorry
