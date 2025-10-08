import Mathlib

theorem log_one_sub_series (z : Complex) (hz : Complex.abs z < 1) :
  Complex.log (1 - z) = -∑' n : ℕ, z^(n+1) / (n+1) := by sorry
