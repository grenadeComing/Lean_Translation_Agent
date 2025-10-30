import Mathlib

/-- Let z ∈ ℂ. Prove that |sin z| ≤ (1/2) e^{|z|} and |cos z| ≤ (1/2) e^{|z|}. -/
lemma abs_sin_le_exp_abs (z : ℂ) :
  Complex.abs (Complex.sin z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by
  sorry

lemma abs_cos_le_exp_abs (z : ℂ) :
  Complex.abs (Complex.cos z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by
  sorry
