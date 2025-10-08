import Mathlib

/-- Prove that if z ∈ ℂ and |z| < 1, then |log(1 - z)| ≤ |z| / (1 - |z|). -/
theorem norm_log_one_sub_le (z : ℂ) (hz : ‖z‖ < 1) : ‖Complex.log (1 - z)‖ ≤ ‖z‖ / (1 - ‖z‖) := by
  sorry
