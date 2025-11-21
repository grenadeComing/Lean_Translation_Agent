import Mathlib

/-- For any complex number z, |sin z| ≤ 1/2 * e^{|z|}. -/
theorem abs_sin_le_exp_div_two (z : ℂ) : Complex.abs (Complex.sin z) ≤ Real.exp (Complex.abs z) / 2 := by sorry

/-- For any complex number z, |cos z| ≤ 1/2 * e^{|z|}. -/
theorem abs_cos_le_exp_div_two (z : ℂ) : Complex.abs (Complex.cos z) ≤ Real.exp (Complex.abs z) / 2 := by sorry