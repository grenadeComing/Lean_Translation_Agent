import Mathlib

/-- For any complex z, |sinh z| ≤ (1/2) e^{|z|}. -/
theorem sinh_abs_le {z : ℂ} : Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

/-- For any complex z, |cosh z| ≤ (1/2) e^{|z|}. -/
theorem cosh_abs_le {z : ℂ} : Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
