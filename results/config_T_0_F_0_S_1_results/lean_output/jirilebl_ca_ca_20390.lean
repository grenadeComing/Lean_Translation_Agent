import Mathlib

theorem exp_taylor_error_complex (z : ℂ) (n : ℕ) :
  Complex.abs ((∑ k in Finset.range (n+1), z ^ k / (Nat.factorial k : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n+1) / (Nat.factorial (n+1) : ℝ) * Real.exp (Complex.abs z) := by sorry
