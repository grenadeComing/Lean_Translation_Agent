import Mathlib
open scoped Real

/-- Let z be a complex number. Prove that |sin z| ≤ 1/2 e^{|z|} and |cos z| ≤ 1/2 e^{|z|}. -/
theorem complex_sin_bound {z : ℂ} : ‖Complex.sin z‖ ≤ 1 / 2 * Real.exp ‖z‖ := by sorry

/-- Let z be a complex number. Prove that |sin z| ≤ 1/2 e^{|z|} and |cos z| ≤ 1/2 e^{|z|}. -/
theorem complex_cos_bound {z : ℂ} : ‖Complex.cos z‖ ≤ 1 / 2 * Real.exp ‖z‖ := by sorry
