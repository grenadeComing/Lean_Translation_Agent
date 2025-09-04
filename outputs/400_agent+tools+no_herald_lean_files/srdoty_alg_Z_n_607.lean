import Mathlib

/-!
Let n be a fixed positive integer and let a,b,c ∈ ℤ.
Show that if a ≡ b [ZMOD n] and b ≡ c [ZMOD n], then a ≡ c [ZMOD n].
-/

theorem srdoty_alg_Z_n_607 (n : Int) {a b c : Int}
  (hab : a ≡ b [ZMOD n]) (hbc : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by sorry
