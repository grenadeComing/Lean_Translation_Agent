import Mathlib

-- inequalities for complex sinh and cosh

theorem abs_sinh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
