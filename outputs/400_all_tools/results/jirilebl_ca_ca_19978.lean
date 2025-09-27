import Mathlib

open Complex BigOperators Finset

theorem exp_taylor_error (z : ℂ) (n : ℕ) :
  Complex.abs (((Finset.range (n + 1)).sum fun k => (z ^ k) / (Nat.factorial k : ℂ)) - Complex.exp z) ≤
    (Complex.abs z)^(n + 1) / (Nat.factorial (n + 1) : ℝ) * Real.exp (Complex.abs z) := by sorry
