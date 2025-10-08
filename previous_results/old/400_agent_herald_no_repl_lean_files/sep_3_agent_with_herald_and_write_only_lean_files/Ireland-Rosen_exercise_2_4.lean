import Mathlib

/-!
Exercise (Ireland–Rosen 2.4).
If a is a nonzero integer, then for n > m show that
gcd(a^{2^n}+1, a^{2^m}+1) = 1 or 2 depending on whether a is odd or even.
-/

theorem Ireland_Rosen_exercise_2_4 (a : Int) (ha : a ≠ 0) :
  ∀ {n m : Nat}, n > m → Int.gcd (a ^ (2 ^ n) + 1) (a ^ (2 ^ m) + 1) =
    (if a % 2 = 0 then 2 else 1) := by sorry
