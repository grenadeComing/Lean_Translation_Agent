import Mathlib

/-- For any complex z, |cos z| ≥ |cos (Re z)|. -/
theorem abs_cos_complex_ge_abs_cos_re (z : ℂ) :
  Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos z.re) := by sorry
