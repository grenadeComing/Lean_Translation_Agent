import Mathlib

open Complex

theorem complex_exp_series_tail_bound (z : Complex) (n : Nat) :
  (∑ k in Finset.range (n+1), z ^ k / (Nat.cast (Nat.factorial k) : Complex) - Complex.exp z).abs
    ≤ (Complex.abs z) ^ (n+1) / (Nat.cast (Nat.factorial (n+1)) : ℝ) * Real.exp (Complex.abs z) := by sorry
