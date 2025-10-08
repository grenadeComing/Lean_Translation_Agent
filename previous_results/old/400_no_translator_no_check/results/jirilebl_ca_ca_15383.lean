import Mathlib

open Complex

/-- For any complex z, |sin z| ≤ 1/2 * e^{|z|}. -/
theorem abs_sin_le_exp_half (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by
  sorry

/-- For any complex z, |cos z| ≤ 1/2 * e^{|z|}. -/
theorem abs_cos_le_exp_half (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by
  sorry
