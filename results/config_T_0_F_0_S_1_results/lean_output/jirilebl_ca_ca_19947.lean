import Mathlib

theorem sin_cos_abs_le_half_exp (z : Complex) :
  Complex.abs (Complex.sin z) ≤ (1/2 : ℝ) * Real.exp (Complex.abs z) ∧
  Complex.abs (Complex.cos z) ≤ (1/2 : ℝ) * Real.exp (Complex.abs z) := by sorry