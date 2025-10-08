import Mathlib

open Complex
open BigOperators

theorem jirilebl_ca_ca_15413 (z : ℂ) (n : ℕ) :
  Complex.abs (((Finset.range (n+1)).sum fun k => z ^ k / (Nat.factorial k : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n+1) / (Nat.factorial (n+1) : ℝ) * Real.exp (Complex.abs z) := by sorry
