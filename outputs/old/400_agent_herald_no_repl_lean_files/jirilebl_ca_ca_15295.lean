import Mathlib

open Complex

/-- For any complex z, |sinh z| ≤ 1/2 * exp |z|. -/
theorem abs_sinh_le_half_exp_abs (z : ℂ) : |sinh z| ≤ (1 / 2 : ℝ) * Real.exp |z| := by sorry

/-- For any complex z, |cosh z| ≤ 1/2 * exp |z|. -/
theorem abs_cosh_le_half_exp_abs (z : ℂ) : |cosh z| ≤ (1 / 2 : ℝ) * Real.exp |z| := by sorry
