import Mathlib

-- Let z ∈ ℂ. Prove that |sin z| ≤ (1/2) e^{|z|} and |cos z| ≤ (1/2) e^{|z|}.
lemma abs_sin_le_half_exp (z : ℂ) : Complex.abs (Complex.sin z) ≤ Real.exp (Complex.abs z) / 2 := by
  sorry

lemma abs_cos_le_half_exp (z : ℂ) : Complex.abs (Complex.cos z) ≤ Real.exp (Complex.abs z) / 2 := by
  sorry
