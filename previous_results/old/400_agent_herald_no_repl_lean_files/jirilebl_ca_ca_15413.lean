import Mathlib

open Complex

theorem exp_series_remainder_bound (z : ℂ) : ∀ n : ℕ,
  Complex.abs ((∑ k in Finset.range (n + 1), z ^ k / (Nat.factorial k : ℂ)) - exp z) ≤
    (abs z) ^ (n + 1) / (Nat.factorial (n + 1) : ℝ) * Real.exp (abs z) := by sorry
