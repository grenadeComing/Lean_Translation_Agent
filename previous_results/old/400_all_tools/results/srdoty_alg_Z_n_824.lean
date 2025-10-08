import Mathlib

/- Basic properties of congruence modulo n for integers. -/

theorem int_modeq_refl (n a : Int) : a ≡ a [ZMOD n] := by sorry

theorem int_modeq_symm {n a b : Int} (h : a ≡ b [ZMOD n]) : b ≡ a [ZMOD n] := by sorry

theorem int_modeq_trans {n a b c : Int} (hab : a ≡ b [ZMOD n]) (hbc : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by sorry
