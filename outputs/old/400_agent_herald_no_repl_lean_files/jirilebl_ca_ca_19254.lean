import Mathlib

/-!
Simple statement: for any complex z, |cos z| ≥ |cos (re z)|.
-/

theorem abs_cos_ge_abs_cos_re (z : ℂ) :
  Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos z.re) := by sorry
