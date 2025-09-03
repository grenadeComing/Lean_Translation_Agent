import Mathlib

/-!
Herstein exercise 2.4.36
If a > 1 is an integer and n is a positive integer, then n divides φ(a^n - 1),
where φ is the Euler totient function.
-/

open Nat

theorem herstein_exercise_2_4_36 (a n : ℕ) (ha : a > 1) (hn : n > 0) :
  n ∣ Nat.totient (a ^ n - 1) := by sorry
