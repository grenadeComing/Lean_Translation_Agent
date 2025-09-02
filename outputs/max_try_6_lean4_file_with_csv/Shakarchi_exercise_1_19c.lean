import Mathlib

/-!
Exercise: Prove that the power series \sum_{n=1}^\infty z^n / n converges for every z on the unit circle except z = 1.
This file provides the statement only; the proof is omitted (:= by sorry) as requested.
-/

open Complex

theorem Shakarchi_exercise_1_19c (z : ℂ) (hz1 : Complex.abs z = 1) (hz : z ≠ 1) :
  Summable fun n : ℕ => z ^ (n + 1) / ((n + 1) : ℂ) := by sorry
