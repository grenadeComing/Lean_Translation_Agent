import Mathlib

theorem complex_abs_tanh_le_tanh_abs_re (z : Complex) :
  Complex.abs (Complex.tanh z) ≤ Real.tanh (abs (Complex.re z)) := by sorry
