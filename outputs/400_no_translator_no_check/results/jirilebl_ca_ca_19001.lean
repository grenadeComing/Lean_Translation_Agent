import Mathlib

open Complex

/-- For any complex z, |sin z| ≤ 1/2 * e^{|z|}. -/
theorem sin_abs_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by
  sorry

/-- For any complex z, |cos z| ≤ 1/2 * e^{|z|}. -/
theorem cos_abs_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by
  sorry
