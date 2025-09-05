import Mathlib

theorem abs_log_one_sub_le_tsum_and_geometric {z : ℂ} (hz : |z| < 1) :
  |Complex.log (1 - z)| ≤ ∑' n : ℕ, |z|^(n+1) / (n+1 : ℝ) ∧ ∑' n : ℕ, |z|^(n+1) / (n+1 : ℝ) ≤ |z| / (1 - |z|) := by sorry
