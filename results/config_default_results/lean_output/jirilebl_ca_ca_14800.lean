import Mathlib

/-- For any complex z, |sinh z| ≤ (1/2) * e^{|z|}. -/
axiom complex_abs_sinh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z)

/-- For any complex z, |cosh z| ≤ (1/2) * e^{|z|}. -/
axiom complex_abs_cosh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z)
