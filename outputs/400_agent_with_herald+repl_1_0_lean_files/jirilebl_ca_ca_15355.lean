import Mathlib

theorem geometric_series_abs {z : ℂ} (h : Complex.abs z < 1) :
  (∑' n : ℕ, (Complex.abs z) ^ n) = Complex.abs z / (1 - Complex.abs z) := by sorry
