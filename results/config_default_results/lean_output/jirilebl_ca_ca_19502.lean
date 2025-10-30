import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Show that ∑_{n=1}^∞ |z|^n = |z|/(1 - |z|). -/
theorem hasSum_norm_geometric_of_abs_lt_one {z : ℂ} (h : ‖z‖ < 1) :
  HasSum (fun n : ℕ => ‖z‖ ^ n) (‖z‖ / (1 - ‖z‖)) := by
  sorry
