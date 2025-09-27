import Mathlib

open scoped BigOperators

theorem complex_norm_geometric_sum (z : ℂ) (hz : ‖z‖ < 1) :
  ∑' n : ℕ, ‖z‖ ^ n = ‖z‖ / (1 - ‖z‖) := by sorry
