import Mathlib

/-- Let z ∈ ℂ. Prove that |sin z| ≤ (1/2) e^{|z|} and |cos z| ≤ (1/2) e^{|z|}. -/
theorem abs_sin_le_exp_half (z : ℂ) : Complex.abs (Complex.sin z) ≤ ((1 : ℝ) / 2) * Real.exp (Complex.abs z) := by
  sorry

theorem abs_cos_le_exp_half (z : ℂ) : Complex.abs (Complex.cos z) ≤ ((1 : ℝ) / 2) * Real.exp (Complex.abs z) := by
  sorry
