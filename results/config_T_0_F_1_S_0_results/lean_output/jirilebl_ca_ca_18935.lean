import Mathlib

/-- For z ∈ ℂ, the norms of sinh z and cosh z are bounded by (1/2) e^{‖z‖}. -/
theorem sinh_norm_le_half_exp_norm (z : ℂ) :
  Norm.norm (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Norm.norm z) := by sorry

/-- For z ∈ ℂ, the norms of sinh z and cosh z are bounded by (1/2) e^{‖z‖}. -/
theorem cosh_norm_le_half_exp_norm (z : ℂ) :
  Norm.norm (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Norm.norm z) := by sorry
