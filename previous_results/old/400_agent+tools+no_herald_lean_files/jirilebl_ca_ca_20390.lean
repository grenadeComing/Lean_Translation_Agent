import Mathlib

open Complex

theorem exp_series_bound (z : Complex) (n : ℕ) :
  Complex.abs ((Finset.sum (Finset.range (n + 1)) fun k => z ^ k / (Nat.factorial k : Complex)) - Complex.exp z) ≤
    (Complex.abs z) ^ (n + 1) / (Nat.factorial (n + 1) : ℝ) * Real.exp (Complex.abs z) := by
  sorry
