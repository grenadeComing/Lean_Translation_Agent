import Mathlib

/-!
Simple statement: for any complex z, |tanh z| ≤ tanh |Re z|.
-/-

theorem abs_tanh_le_tanh_abs_re (z : Complex) :
  Complex.abs (Complex.tanh z) ≤ Real.tanh (abs z.re) := by sorry
