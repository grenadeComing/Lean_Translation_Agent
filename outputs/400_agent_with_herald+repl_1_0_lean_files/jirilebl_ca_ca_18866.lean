import Mathlib

theorem log_one_sub_bound {z : Complex} (hz : Complex.abs z < 1) : Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
