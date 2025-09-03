import Mathlib

/-!
Herstein, Abstract Algebra, Exercise 2.4.36:
If a > 1 is an integer and n is a positive integer, then n ∣ φ(a^n - 1).
-/

theorem herstein_exercise_2_4_36 (a n : ℕ) (ha : 1 < a) (hn : 1 ≤ n) :
  n ∣ Nat.totient (a ^ n - 1) := by sorry
