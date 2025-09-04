import Mathlib

theorem complex_abs_cos_ge_abs_cos_re (z : Complex) :
  Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos (z.re : Complex)) := by sorry
