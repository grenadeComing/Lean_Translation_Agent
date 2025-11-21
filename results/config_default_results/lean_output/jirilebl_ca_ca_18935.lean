import Mathlib

/-!
Inequalities for sinh and cosh: statement only.
For all complex numbers z, we have
Complex.abs (Complex.sinh z) ≤ 1/2 * Real.exp (Complex.abs z)
and
Complex.abs (Complex.cosh z) ≤ 1/2 * Real.exp (Complex.abs z).
-/

theorem abs_sinh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.sinh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.cosh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by sorry
