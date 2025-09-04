import Mathlib

open Complex

theorem abs_sinh_le_half_exp_abs (z : ℂ) : Complex.abs (sinh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : ℂ) : Complex.abs (cosh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by sorry
