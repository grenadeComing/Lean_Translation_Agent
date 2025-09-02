import Mathlib

/-!
Exercise: If a is a nonzero integer, then for n > m show that
  gcd(a^{2^n} + 1, a^{2^m} + 1) = 1 or 2 depending on whether a is even or odd.
-/

theorem Ireland_Rosen_exercise_2_4 (a : ℤ) (ha : a ≠ 0) (m n : ℕ) (hn : n > m) :
  (2 ∣ a → Int.gcd (a ^ (2 ^ n) + 1) (a ^ (2 ^ m) + 1) = 1) ∧
  (¬ 2 ∣ a → Int.gcd (a ^ (2 ^ n) + 1) (a ^ (2 ^ m) + 1) = 2) := by
  sorry
