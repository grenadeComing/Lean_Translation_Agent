import Mathlib

/-- For any complex z, both |sinh z| and |cosh z| are bounded by (1/2) * e^{|z|}. -/
lemma abs_sinh_cosh_le_half_exp (z : ℂ) :
  abs (Complex.sinh z) ≤ (1 / 2) * Real.exp (abs z) ∧
  abs (Complex.cosh z) ≤ (1 / 2) * Real.exp (abs z) := by sorry