import Mathlib

/-- If r is rational (r ≠ 0) and x is irrational, prove that r + x is irrational. -/
theorem add_rational_irrational (r x : ℝ) (hr : r ≠ 0) (hx : Irrational x) : Irrational (r + x) := by sorry
