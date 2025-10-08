import Mathlib

theorem bounds_sinh_cosh (z : Complex) :
  Complex.abs (Complex.sinh z) ≤ (1/2) * Real.exp (Complex.abs z) ∧
  Complex.abs (Complex.cosh z) ≤ (1/2) * Real.exp (Complex.abs z) := by
  sorry
