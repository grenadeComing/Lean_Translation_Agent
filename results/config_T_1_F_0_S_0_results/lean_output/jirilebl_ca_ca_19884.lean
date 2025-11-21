import Mathlib

/-- Let z be a complex number. Prove that |sinh z| ≤ (1/2) * exp |z| and |cosh z| ≤ (1/2) * exp |z|. -/
lemma abs_sinh_cosh_le_exp_div_two (z : ℂ) : |Complex.sinh z| ≤ (1 / 2) * Real.exp |z| ∧ |Complex.cosh z| ≤ (1 / 2) * Real.exp |z| := by sorry
