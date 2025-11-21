import Mathlib

theorem abs_log_one_sub_le (z : Complex) (hz : z.abs < (1 : ℝ)) :
  (Complex.log (1 - z)).abs ≤ z.abs / (1 - z.abs) := by sorry
