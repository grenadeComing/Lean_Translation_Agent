import Mathlib

/-- For any complex number z, the modulus of sinh z is bounded by (1/2) e^{|z|}. -/
theorem complex.abs_sinh_le_half_exp_abs (z : Complex) :
  abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (abs z) := by sorry

/-- For any complex number z, the modulus of cosh z is bounded by (1/2) e^{|z|}. -/
theorem complex.abs_cosh_le_half_exp_abs (z : Complex) :
  abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (abs z) := by sorry
