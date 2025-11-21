import Mathlib

theorem abs_tanh_le_tanh_abs_re (z : Complex) :
  Complex.abs (Complex.tanh z) ≤ Real.tanh (Real.abs z.re) := by sorry
