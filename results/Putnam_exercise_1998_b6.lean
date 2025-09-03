import Mathlib

/-!
Putnam 1998 B6: For any integers a, b, c, there exists a positive integer n such that
√(n^3 + a n^2 + b n + c) is not an integer.
-/

theorem putnam_1998_b6 (a b c : Int) :
  ∃ n : Nat, 0 < n ∧ ¬∃ m : Int, m * m = (n : Int) ^ 3 + a * (n : Int) ^ 2 + b * (n : Int) + c := by sorry
