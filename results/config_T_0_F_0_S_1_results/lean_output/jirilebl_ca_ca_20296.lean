import Mathlib

open Complex

/-- For any complex z, |sinh z| ≤ (1/2) * e^{|z|}. -/
theorem abs_sinh_le_half_exp_abs (z : ℂ) :
  abs (sinh z) ≤ (1 / 2 : ℝ) * Real.exp (abs z) := by sorry

/-- For any complex z, |cosh z| ≤ (1/2) * e^{|z|}. -/
theorem abs_cosh_le_half_exp_abs (z : ℂ) :
  abs (cosh z) ≤ (1 / 2 : ℝ) * Real.exp (abs z) := by sorry
