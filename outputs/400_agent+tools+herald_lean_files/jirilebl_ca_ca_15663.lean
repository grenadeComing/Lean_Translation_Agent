import Mathlib

open Complex

/-- For |z| < 1 the principal branch of the complex logarithm satisfies the power series bound.
    |log (1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n. -/
theorem complex_log_abs_le_tsum {z : ℂ} (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' n : ℕ, (Complex.abs z) ^ n / (n : ℝ) := by sorry

/-- The numerical bound ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|) for |z| < 1. -/
theorem tsum_abs_pow_div_le_geom {z : ℂ} (hz : Complex.abs z < 1) :
  (∑' n : ℕ, (Complex.abs z) ^ n / (n : ℝ)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
