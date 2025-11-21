import Mathlib

theorem abs_log_le_series (z : Complex) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' (n : ℕ), (Complex.abs z) ^ (n+1) / (n+1 : ℝ) ∧
  ∑' (n : ℕ), (Complex.abs z) ^ (n+1) / (n+1 : ℝ) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry