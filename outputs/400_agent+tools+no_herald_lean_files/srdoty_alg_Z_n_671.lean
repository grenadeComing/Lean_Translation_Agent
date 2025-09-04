import Mathlib

/-!
Let n be a fixed integer and a,b,c,d ∈ ℤ. Suppose a ≡ b (mod n) and c ≡ d (mod n).
Show that a + c ≡ b + d (mod n).
-/

theorem srdoty_alg_Z_n_671 (n a b c d : Int) (h1 : a ≡ b [ZMOD n]) (h2 : c ≡ d [ZMOD n]) :
  a + c ≡ b + d [ZMOD n] := by sorry
