import Mathlib

open Complex

theorem log_one_sub_le (z : ℂ) (h : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
