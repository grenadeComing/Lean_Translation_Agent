import Mathlib

theorem abs_csc_ge_abs_csc_re (z : ℂ) :
  Complex.abs (1 / Complex.sin z) ≥ Complex.abs (1 / Complex.sin (z.re)) := by sorry
