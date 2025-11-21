import Mathlib

/-- For any complex number z, the absolute values of sinh z and cosh z are bounded
    by (1/2) * exp (|z|). -/
theorem sinh_abs_le_half_exp_abs (z : Complex) :
  Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

/-- For any complex number z, the absolute values of sinh z and cosh z are bounded
    by (1/2) * exp (|z|). -/
theorem cosh_abs_le_half_exp_abs (z : Complex) :
  Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
