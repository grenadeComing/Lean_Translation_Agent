import Mathlib

/-- For z in C with |z| < 1, the principal branch of log satisfies
    |log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z|/(1-|z|). -/
theorem complex_log_abs_series_bounds (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z))
    ≤ ∑' (n : ℕ), (Complex.abs z)^(n+1) / (n+1)
    ∧ ∑' (n : ℕ), (Complex.abs z)^(n+1) / (n+1) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry