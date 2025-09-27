import Mathlib

/-- Let z ∈ ℂ. Prove that |sinh z| ≤ (1/2) e^{|z|} and |cosh z| ≤ (1/2) e^{|z|}. -/
theorem abs_sinh_le_ext (z : ℂ) : abs (Complex.sinh z) ≤ (1 / 2) * Real.exp (abs z) := by sorry

/-- Let z ∈ ℂ. Prove that |sinh z| ≤ (1/2) e^{|z|} and |cosh z| ≤ (1/2) e^{|z|}. -/
theorem abs_cosh_le_ext (z : ℂ) : abs (Complex.cosh z) ≤ (1 / 2) * Real.exp (abs z) := by sorry
