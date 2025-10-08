import Mathlib

open Int

theorem srdoty_alg_Z_n_828 (n : Int) (hn : 0 < n) {a b c d : Int}
  (hab : a ≡ b [ZMOD n]) (hcd : c ≡ d [ZMOD n]) :
  a + c ≡ b + d [ZMOD n] ∧ a * c ≡ b * d [ZMOD n] := by sorry
