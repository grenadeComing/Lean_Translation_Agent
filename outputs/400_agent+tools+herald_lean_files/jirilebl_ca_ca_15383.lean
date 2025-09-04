import Mathlib

/-- For complex z, Complex.abs (Complex.sin z) ≤ 1/2 * exp (Complex.abs z). -/
theorem abs_sin_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

/-- For complex z, Complex.abs (Complex.cos z) ≤ 1/2 * exp (Complex.abs z). -/
theorem abs_cos_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
