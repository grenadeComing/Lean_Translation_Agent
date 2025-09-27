import Mathlib

open BigOperators

theorem complex_exp_taylor_remainder (z : ℂ) (n : ℕ) :
  Complex.abs ((∑ k in Finset.range (n+1), z ^ k / (Nat.cast (Nat.factorial k) : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n+1) / (Nat.cast (Nat.factorial (n+1)) : ℝ) * Real.exp (Complex.abs z) := by
  sorry
