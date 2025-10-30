import Mathlib

open Finset

theorem complex_exp_series_bound (z : ℂ) (n : ℕ) :
  ‖ (∑ k in Finset.range (n + 1), z ^ k / (Nat.factorial k : ℂ)) - exp z ‖ ≤
    (‖z‖) ^ (n + 1) / ((Nat.factorial (n + 1)) : ℝ) * Real.exp ‖z‖ := by
  sorry
