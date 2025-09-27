import Mathlib

/-- Let z ∈ ℂ. Prove that |sin z| ≤ 1/2 e^{|z|}. -/
theorem abs_sin_le_exp_div_two (z : ℂ) : ‖Complex.sin z‖ ≤ Real.exp ‖z‖ / 2 := by sorry

/-- Let z ∈ ℂ. Prove that |cos z| ≤ 1/2 e^{|z|}. -/
theorem abs_cos_le_exp_div_two (z : ℂ) : ‖Complex.cos z‖ ≤ Real.exp ‖z‖ / 2 := by sorry
