import Mathlib

/-!
Let n be a fixed positive integer and let a,b,c,d ∈ ℤ.
Suppose that a ≡ b [ZMOD n] and c ≡ d [ZMOD n].
Show that ac ≡ bd [ZMOD n].
-/

theorem int_modeq_mul {n : ℤ} (hn : 0 < n) (a b c d : ℤ)
  (hab : a ≡ b [ZMOD n]) (hcd : c ≡ d [ZMOD n]) :
  a * c ≡ b * d [ZMOD n] := by sorry
