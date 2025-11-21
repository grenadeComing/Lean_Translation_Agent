import Mathlib

-- Use `Norm.norm` to avoid deprecated `Complex.abs` warnings.
theorem abs_sinh_le_half_exp_abs (z : Complex) : Norm.norm (Complex.sinh z) ≤ (1 : Real) / 2 * Real.exp (Norm.norm z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : Complex) : Norm.norm (Complex.cosh z) ≤ (1 : Real) / 2 * Real.exp (Norm.norm z) := by sorry
