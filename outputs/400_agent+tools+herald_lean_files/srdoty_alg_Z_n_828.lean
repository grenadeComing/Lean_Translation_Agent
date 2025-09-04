import Mathlib

theorem srdoty_alg_Z_n_828 (n : ℤ) (hn : 0 < n) (a b c d : ℤ)
  (hab : Int.ModEq n a b) (hcd : Int.ModEq n c d) :
  Int.ModEq n (a + c) (b + d) ∧ Int.ModEq n (a * c) (b * d) := by
  sorry
