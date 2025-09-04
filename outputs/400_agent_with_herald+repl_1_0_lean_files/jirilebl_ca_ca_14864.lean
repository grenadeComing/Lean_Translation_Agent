import Mathlib

/-- For any complex number z, |sin z| ≤ 1/2 * e^{|z|}. -/
theorem complex_sin_abs_le_half_exp (z : Complex) :
  Complex.abs (Complex.sin z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

/-- For any complex number z, |cos z| ≤ 1/2 * e^{|z|}. -/
theorem complex_cos_abs_le_half_exp (z : Complex) :
  Complex.abs (Complex.cos z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry
