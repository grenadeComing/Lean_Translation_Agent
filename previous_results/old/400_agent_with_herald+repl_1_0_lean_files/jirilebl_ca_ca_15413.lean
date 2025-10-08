import Mathlib
open Complex

theorem exp_series_tail_bound (z : Complex) (n : Nat) :
  abs (∑ k in Finset.range (n+1), z ^ k / (k! : Complex) - exp z) ≤
    abs z ^ (n+1) / ((n+1)! : Complex) * exp (abs z) := by
  sorry
