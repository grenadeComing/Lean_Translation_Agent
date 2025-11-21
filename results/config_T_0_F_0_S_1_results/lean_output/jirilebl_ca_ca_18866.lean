import Mathlib

-- Proposition: for z ∈ ℂ with |z| < 1, we have |log(1 - z)| ≤ |z| / (1 - |z|).

theorem log_abs_le_of_abs_lt_one (z : Complex) (h : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry