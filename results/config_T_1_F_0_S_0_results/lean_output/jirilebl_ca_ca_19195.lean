import Mathlib

theorem complex_log_series (z : Complex) (hz : Complex.abs z < 1) :
  Complex.log (1 - z) = -∑' n : ℕ, if n = 0 then (0 : Complex) else z ^ n / (n : Complex) := by sorry