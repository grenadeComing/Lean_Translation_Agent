import Mathlib
open Complex

/-- Let z ∈ ℂ. Prove that |sin z| ≤ 1/2 e^{|z|} and |cos z| ≤ 1/2 e^{|z|}. -/
theorem abs_sin_cos_le_half_exp {z : ℂ} :
  |sin z| ≤ (1 / 2 : ℝ) * Real.exp |z| ∧ |cos z| ≤ (1 / 2 : ℝ) * Real.exp |z| := by
  sorry
