import Mathlib

/-!
Exercise: If r is rational (r ≠ 0) and x is irrational, prove that r x is irrational.
We formalize: for r : ℚ, x : ℝ, r ≠ 0 and x is not equal to any rational, then ↑r * x is not rational.
-/

theorem rudin_exercise_1_1b (r : ℚ) (x : ℝ) (hr : r ≠ 0) (hx : ¬ ∃ q : ℚ, x = q) : ¬ ∃ q : ℚ, (↑r * x) = q := by sorry
