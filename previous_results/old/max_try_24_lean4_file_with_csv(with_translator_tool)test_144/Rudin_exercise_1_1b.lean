import Mathlib

/-- If r is rational (r ≠ 0) and x is irrational, then r * x is irrational. -/
theorem rat_mul_irrational {r : ℚ} (hr : r ≠ 0) {x : ℝ} (hx : Irrational x) : Irrational ((r : ℝ) * x) := by sorry
