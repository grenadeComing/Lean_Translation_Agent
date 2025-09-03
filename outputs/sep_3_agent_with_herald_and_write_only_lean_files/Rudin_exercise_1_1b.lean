import Mathlib

/-- Rudin exercise 1.1(b): If r is rational (r ≠ 0) and x is irrational, then r * x is irrational. -/
theorem Rudin_exercise_1_1b (r : ℚ) (x : ℝ) (hr : r ≠ 0) (hx : Irrational x) : Irrational ((r : ℝ) * x) := by sorry
