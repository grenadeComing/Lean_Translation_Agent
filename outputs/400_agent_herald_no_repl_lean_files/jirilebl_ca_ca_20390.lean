import Mathlib

/-- For any complex z and natural n, the remainder of the exponential Taylor series is bounded
    by |z|^{n+1}/(n+1)! * exp |z|. -/
theorem exp_series_remainder_bound (z : ℂ) (n : ℕ) :
  Complex.abs (∑ k in Finset.range (n+1), z ^ k / (k! : ℂ) - Complex.exp z) ≤
    (Complex.abs z) ^ (n+1) / ((n+1)! : ℝ) * Real.exp (Complex.abs z) := by sorry
