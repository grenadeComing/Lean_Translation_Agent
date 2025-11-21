import Mathlib

/-- For z ∈ ℂ, |sin z| ≤ 1/2 * e^{|z|} and |cos z| ≤ 1/2 * e^{|z|}. -/
theorem abs_sin_cos_le_half_exp_abs (z : Complex) :
  abs (sin z) ≤ (1 : ℝ) / 2 * Real.exp (abs z) ∧ abs (cos z) ≤ (1 : ℝ) / 2 * Real.exp (abs z) := by sorry