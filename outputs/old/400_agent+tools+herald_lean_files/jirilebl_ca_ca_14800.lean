import Mathlib

open Complex

/-- For z : ℂ, |sinh z| ≤ 1/2 * exp (|z|) -/
theorem abs_sinh_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

/-- For z : ℂ, |cosh z| ≤ 1/2 * exp (|z|) -/
theorem abs_cosh_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
