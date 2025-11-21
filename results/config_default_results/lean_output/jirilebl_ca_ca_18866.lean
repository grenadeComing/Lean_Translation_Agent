import Mathlib

/-- If z ∈ ℂ and |z| < 1, then |log(1 - z)| ≤ |z| / (1 - |z|). -/
theorem abs_log_one_sub_le (z : ℂ) (hz : ‖z‖ < 1) :
  ‖Complex.log (1 - z)‖ ≤ ‖z‖ / (1 - ‖z‖) := by sorry
