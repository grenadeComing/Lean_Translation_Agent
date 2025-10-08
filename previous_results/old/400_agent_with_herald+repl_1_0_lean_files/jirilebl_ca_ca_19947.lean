import Mathlib

-- Inequalities for complex sine and cosine: |sin z| ≤ 1/2 * e^{|z|}, |cos z| ≤ 1/2 * e^{|z|}.

theorem abs_sin_le_half_exp (z : Complex) : Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry

theorem abs_cos_le_half_exp (z : Complex) : Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry
