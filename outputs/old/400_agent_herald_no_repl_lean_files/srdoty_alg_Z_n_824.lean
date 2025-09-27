import Mathlib

/-!
Basic properties of congruence modulo n for integers.
We state reflexivity, symmetry and transitivity of congruence (modeq).
We assume n > 0 as in the problem statement, though Mathlib's `Int.modeq`
is defined for any integer modulus.
-/-

theorem congruence_refl (n : Int) (hn : 0 < n) (a : Int) : Int.modeq a a n := by sorry

theorem congruence_symm (n : Int) (hn : 0 < n) {a b : Int} (h : Int.modeq a b n) : Int.modeq b a n := by sorry

theorem congruence_trans (n : Int) (hn : 0 < n) {a b c : Int} (hab : Int.modeq a b n) (hbc : Int.modeq b c n) : Int.modeq a c n := by sorry
