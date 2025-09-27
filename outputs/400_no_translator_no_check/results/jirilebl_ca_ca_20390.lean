import Mathlib

open BigOperators

theorem complex.exp_series_error_bound (z : Complex) (n : Nat) :
  Complex.abs ((Finset.sum (Finset.range (n+1)) fun k => (z ^ k) / (Nat.factorial k : ℂ)) - Complex.exp z) ≤
    (Complex.abs z) ^ (n+1) / (↑(Nat.factorial (n+1)) : ℝ) * Real.exp (Complex.abs z) := by
  sorry
