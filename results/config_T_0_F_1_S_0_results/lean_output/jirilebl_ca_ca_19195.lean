import Mathlib

open Complex

theorem log_one_sub_series (z : ℂ) (hz : ‖z‖ < 1) :
  Complex.log (1 - z) = - tsum (fun n : ℕ => z ^ (n + 1) / ((n + 1) : ℂ)) := by sorry
