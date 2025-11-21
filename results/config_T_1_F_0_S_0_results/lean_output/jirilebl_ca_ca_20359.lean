import Mathlib

/-- For any complex number z we have |sin z| ≤ 1/2 * exp |z|. -/
theorem abs_sin_le_half_exp_abs (z : ℂ) : abs (Complex.sin z) ≤ (1/2 : ℝ) * Real.exp (abs z) := by sorry

/-- For any complex number z we have |cos z| ≤ 1/2 * exp |z|. -/
theorem abs_cos_le_half_exp_abs (z : ℂ) : abs (Complex.cos z) ≤ (1/2 : ℝ) * Real.exp (abs z) := by sorry