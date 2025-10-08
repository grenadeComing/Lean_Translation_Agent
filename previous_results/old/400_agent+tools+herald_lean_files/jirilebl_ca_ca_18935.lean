import Mathlib

/-- For any complex number z we have |sinh z| ≤ 1/2 * e^{|z|}. -/
theorem abs_sinh_le_half_exp_abs (z : ℂ) : ‖Complex.sinh z‖ ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

/-- For any complex number z we have |cosh z| ≤ 1/2 * e^{|z|}. -/
theorem abs_cosh_le_half_exp_abs (z : ℂ) : ‖Complex.cosh z‖ ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
