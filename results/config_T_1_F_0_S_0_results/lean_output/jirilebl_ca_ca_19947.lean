import Mathlib

/-- For any complex z, |sin z| ≤ (1/2) * e^{|z|}. -/
theorem abs_sin_le_half_exp_abs (z : ℂ) :
  abs (Complex.sin z) ≤ (Real.exp (abs z) / 2) := by sorry

/-- For any complex z, |cos z| ≤ (1/2) * e^{|z|}. -/
theorem abs_cos_le_half_exp_abs (z : ℂ) :
  abs (Complex.cos z) ≤ (Real.exp (abs z) / 2) := by sorry