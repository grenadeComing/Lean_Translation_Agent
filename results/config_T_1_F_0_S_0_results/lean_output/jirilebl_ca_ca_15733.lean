import Mathlib

/-- Let z ∈ ℂ. Prove that |sinh z| ≤ 1/2 * e^{|z|} and |cosh z| ≤ 1/2 * e^{|z|}. -/
theorem abs_sinh_cosh_le_exp_abs (z : ℂ) :
  |Complex.sinh z| ≤ (1 : ℝ) / 2 * Real.exp (|z|) ∧ |Complex.cosh z| ≤ (1 : ℝ) / 2 * Real.exp (|z|) := by sorry
