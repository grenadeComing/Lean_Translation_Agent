import Mathlib

/-!
Exercise: If a is a nonzero integer, then for n > m show that
  (a^{2^n} + 1, a^{2^m} + 1) = 1 or 2 depending on whether a is odd or even.
-/

theorem ireland_rosen_exercise_2_4 (a : Int) (n m : Nat) (hnm : n > m) (ha : a ≠ 0) :
  Int.gcd (a^(2^n) + 1) (a^(2^m) + 1) = if (a % 2 = 0) then 2 else 1 := by
  sorry
