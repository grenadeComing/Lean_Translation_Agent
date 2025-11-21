import Mathlib

/-- For any complex z we have the bounds |sin z| ≤ (1/2) e^{|z|} and |cos z| ≤ (1/2) e^{|z|}. -/
theorem sin_cos_abs_le_half_exp (z : Complex) :
  abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (abs z) ∧
  abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (abs z) := by sorry
