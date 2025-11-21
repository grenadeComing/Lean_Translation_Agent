import Mathlib

/-!
Statements: For any complex z, |sin z| ≤ 1/2 * e^{|z|} and |cos z| ≤ 1/2 * e^{|z|}.
These are stated here without proof (placeholders `by sorry`).
-/

theorem abs_sin_le_half_exp_abs (z : Complex) :
  Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cos_le_half_exp_abs (z : Complex) :
  Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
