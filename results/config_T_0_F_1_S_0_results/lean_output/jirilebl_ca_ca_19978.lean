import Mathlib

open Finset

theorem exp_series_tail_bound (z : ℂ) (n : ℕ) :
  ‖(Finset.sum (range (n + 1)) fun k => (z ^ k) / (Nat.cast (Nat.factorial k) : ℂ) - Complex.exp z)‖ ≤
    ‖z‖ ^ (n + 1) / (Nat.cast (Nat.factorial (n + 1)) : ℝ) * Real.exp ‖z‖ := by sorry
