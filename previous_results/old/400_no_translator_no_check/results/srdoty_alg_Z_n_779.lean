import Mathlib

theorem mod_eq_iff_same_remainder (n : ℤ) (hn : 0 < n) (a b : ℤ) :
  Int.ModEq n a b ↔ Int.emod a n = Int.emod b n := by sorry
