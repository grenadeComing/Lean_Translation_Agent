import Mathlib

/-- For complex z, |sin z| ≤ (1/2) e^{|z|}. -/
theorem sin_abs_le_half_exp_abs (z : ℂ) : ‖Complex.sin z‖ ≤ (1 / 2 : ℝ) * Real.exp ‖z‖ := by sorry

/-- For complex z, |cos z| ≤ (1/2) e^{|z|}. -/
theorem cos_abs_le_half_exp_abs (z : ℂ) : ‖Complex.cos z‖ ≤ (1 / 2 : ℝ) * Real.exp ‖z‖ := by sorry
