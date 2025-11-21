import Mathlib

/-- Congruence modulo n for integers: n divides a - b. -/
def CongruentMod (n : ℕ) (a b : ℤ) : Prop := (n : ℤ) ∣ (a - b)

theorem cong_mod_refl (n : ℕ) (hn : 0 < n) (a : ℤ) : CongruentMod n a a := by sorry

theorem cong_mod_symm (n : ℕ) (hn : 0 < n) {a b : ℤ} (h : CongruentMod n a b) : CongruentMod n b a := by sorry

theorem cong_mod_trans (n : ℕ) (hn : 0 < n) {a b c : ℤ} (hab : CongruentMod n a b) (hbc : CongruentMod n b c) : CongruentMod n a c := by sorry
