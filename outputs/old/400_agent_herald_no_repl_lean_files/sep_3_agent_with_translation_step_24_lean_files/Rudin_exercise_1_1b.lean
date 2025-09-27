import Mathlib

/-- If r is a nonzero rational and x is irrational, then r * x is irrational. -/
theorem Rudin_exercise_1_1b (r : ℚ) (hr : r ≠ 0) (x : ℝ) (hx : Irrational x) : Irrational ((r : ℝ) * x) := by sorry
