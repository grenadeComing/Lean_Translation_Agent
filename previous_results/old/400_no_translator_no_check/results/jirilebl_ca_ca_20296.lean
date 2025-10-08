import Mathlib

/-!
Simple bounds for sinh and cosh on the complex plane:
For all z : ℂ,
  |sinh z| ≤ 1/2 * exp |z|  and  |cosh z| ≤ 1/2 * exp |z|.
These statements are provided here without proof (sorry).
-/

theorem abs_sinh_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry

theorem abs_cosh_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry
