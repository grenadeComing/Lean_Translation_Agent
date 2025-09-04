import Mathlib

open scoped BigOperators

theorem jirilebl_ca_ca_15413 (z : Complex) (n : Nat) :
  Complex.abs (Finset.sum (Finset.range (n+1)) fun k => z ^ k / (Nat.factorial k : Complex) - Complex.exp z) ≤
    (Complex.abs z) ^ (n+1) / (Nat.factorial (n+1) : ℝ) * Real.exp (Complex.abs z) := by sorry
