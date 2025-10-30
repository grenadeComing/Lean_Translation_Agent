import Mathlib

/-- Let z ∈ ℂ. Prove that |sinh z| ≤ (1/2) e^{|z|} and |cosh z| ≤ (1/2) e^{|z|}. -/
lemma abs_sinh_le_exp_abs (z : ℂ) :
  |sinh z| ≤ (1 / 2 : ℝ) * Real.exp |z| ∧
  |cosh z| ≤ (1 / 2 : ℝ) * Real.exp |z| := by
  sorry
