import Mathlib

/-- Let z ∈ ℂ. Prove that |sinh z| ≤ (1/2) e^{|z|} and |cosh z| ≤ (1/2) e^{|z|}. -/
lemma abs_sinh_le_exp_abs (z : ℂ) :
  Complex.abs (sinh z) ≤ ((1 : ℝ) / 2) * Real.exp (Complex.abs z) ∧
  Complex.abs (cosh z) ≤ ((1 : ℝ) / 2) * Real.exp (Complex.abs z) := by
  sorry
