import Mathlib

/-- Power series for log(1 - z) valid for |z| < 1. -/
theorem log_one_sub_series {z : ℂ} (hz : ‖z‖ < 1) :
  Complex.log (1 - z) = -∑' (n : ℕ), z^(n+1) / (n+1 : ℂ) := by sorry
