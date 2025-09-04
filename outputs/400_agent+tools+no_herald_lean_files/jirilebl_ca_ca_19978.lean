import Mathlib

open Complex

theorem exp_partial_sum_error_bound (z : ℂ) (n : Nat) :
  Complex.abs ((Finset.sum (Finset.range (n+1)) fun k : Nat => z ^ k / (Nat.factorial k : ℂ)) - Complex.exp z) ≤
    (Complex.abs z) ^ (n+1) / (Nat.factorial (n+1) : ℝ) * Real.exp (Complex.abs z) := by sorry
