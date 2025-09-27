import Mathlib

/-- Let z ∈ ℂ. Prove that |sinh z| ≤ (1/2) e^{|z|}. -/
theorem abs_sinh_le_exp (z : ℂ) :
  Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

/-- Let z ∈ ℂ. Prove that |cosh z| ≤ (1/2) e^{|z|}. -/
theorem abs_cosh_le_exp (z : ℂ) :
  Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
