import Mathlib

/-- For any complex number z, the sine satisfies ‖sin z‖ ≤ 1/2 * e^{‖z‖}. -/
theorem sin_abs_le_exp (z : ℂ) : ‖Complex.sin z‖ ≤ (1 / 2) * Real.exp ‖z‖ := by sorry

/-- For any complex number z, the cosine satisfies ‖cos z‖ ≤ 1/2 * e^{‖z‖}. -/
theorem cos_abs_le_exp (z : ℂ) : ‖Complex.cos z‖ ≤ (1 / 2) * Real.exp ‖z‖ := by sorry
