import Mathlib

open Complex

/-- For any complex number z, |sinh z| ≤ (1/2) * e^{|z|}. -/
theorem abs_sinh_le_half_exp_abs (z : ℂ) : Complex.abs (sinh z) ≤ (1/2 : ℝ) * Real.exp (Complex.abs z) := by sorry

/-- For any complex number z, |cosh z| ≤ (1/2) * e^{|z|}. -/
theorem abs_cosh_le_half_exp_abs (z : ℂ) : Complex.abs (cosh z) ≤ (1/2 : ℝ) * Real.exp (Complex.abs z) := by sorry
