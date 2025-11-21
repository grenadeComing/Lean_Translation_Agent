import Mathlib

/-- For z ∈ ℂ, bounds for |sin z| and |cos z| in terms of e^{|z|}. -/
theorem abs_sin_le_exp_div_two (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

theorem abs_cos_le_exp_div_two (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry
