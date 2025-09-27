import Mathlib

/-- For any complex number z, |sin z| ≤ 1/2 * e^{|z|}. -/
theorem abs_sin_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

/-- For any complex number z, |cos z| ≤ 1/2 * e^{|z|}. -/
theorem abs_cos_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
