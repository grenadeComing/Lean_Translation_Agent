import Mathlib

/-!
Simple statement: bound on the remainder of the complex exponential Taylor series.
-/

theorem jirilebl_ca_ca_15413 (z : ℂ) (n : ℕ) :
  Complex.abs (((Finset.range (n+1)).sum fun k => z ^ k / (Nat.cast (Nat.factorial k) : ℂ)) - Complex.exp z) ≤
    (Complex.abs z) ^ (n+1) / (Nat.cast (Nat.factorial (n+1)) : ℝ) * Real.exp (Complex.abs z) := by sorry
