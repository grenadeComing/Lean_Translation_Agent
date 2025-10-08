import Mathlib

/-!
Basic properties of congruence modulo n for integers.
-/

theorem congruence_refl (n : Int) (hn : 0 < n) (a : Int) : Int.ModEq n a a := by sorry

theorem congruence_symm (n : Int) (hn : 0 < n) {a b : Int} (h : Int.ModEq n a b) : Int.ModEq n b a := by sorry

theorem congruence_trans (n : Int) (hn : 0 < n) {a b c : Int} (hab : Int.ModEq n a b) (hbc : Int.ModEq n b c) : Int.ModEq n a c := by sorry
