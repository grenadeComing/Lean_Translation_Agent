import Mathlib

/-- Bounds for complex hyperbolic sine and cosine. -/

theorem sinh_bound (z : ℂ) : Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry

theorem cosh_bound (z : ℂ) : Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry
