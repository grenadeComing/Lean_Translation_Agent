import Mathlib

theorem sum_abs_pow_div_le {z : Complex} (h : ‖z‖ < (1 : ℝ)) :
  ∑' (n : ℕ), (‖z‖)^(n+1) / (n+1 : ℝ) ≤ ‖z‖ / ((1 : ℝ) - ‖z‖) := by sorry
