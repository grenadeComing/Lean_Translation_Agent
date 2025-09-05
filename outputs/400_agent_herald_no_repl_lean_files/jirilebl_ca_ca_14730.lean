import Mathlib

open Complex

theorem norm_log_one_sub_le {z : ℂ} (hz : ‖z‖ < 1) : ‖Complex.log (1 - z)‖ ≤ ‖z‖ / (1 - ‖z‖) := by sorry
