import Mathlib

open Complex

/-- For any complex number z, the norm of sin z is at most (1/2) * e^{‖z‖}. -/
theorem abs_sin_le_half_exp_abs (z : ℂ) : ‖sin z‖ ≤ (1 / 2 : ℝ) * Real.exp ‖z‖ := by sorry

/-- For any complex number z, the norm of cos z is at most (1/2) * e^{‖z‖}. -/
theorem abs_cos_le_half_exp_abs (z : ℂ) : ‖cos z‖ ≤ (1 / 2 : ℝ) * Real.exp ‖z‖ := by sorry
