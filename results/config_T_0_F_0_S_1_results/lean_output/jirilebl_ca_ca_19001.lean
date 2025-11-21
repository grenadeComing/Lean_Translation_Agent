import Mathlib

/--
For any complex number z, the absolute values of sin z and cos z are bounded by
(1/2) * exp |z|.
-/
theorem abs_sin_le_half_mul_exp_abs (z : ℂ) : |sin z| ≤ (1 / 2 : ℝ) * Real.exp |z| := by sorry

theorem abs_cos_le_half_mul_exp_abs (z : ℂ) : |cos z| ≤ (1 / 2 : ℝ) * Real.exp |z| := by sorry
