import Mathlib

/-- Let z in ℂ with ‖z‖ < 1. Show that ‖log(1 - z)‖ ≤ ∑_{n=1}^∞ ‖z‖^n / n ≤ ‖z‖ / (1 - ‖z‖). -/
theorem abs_log_one_sub_le_tsum_of_norm_lt_one {z : ℂ} (hz : ‖z‖ < 1) :
  ‖Complex.log (1 - z)‖ ≤ ∑' n : ℕ, ‖z‖^(n + 1) / (↑n + 1) ∧
  ∑' n : ℕ, ‖z‖^(n + 1) / (↑n + 1) ≤ ‖z‖ / (1 - ‖z‖) := by sorry
