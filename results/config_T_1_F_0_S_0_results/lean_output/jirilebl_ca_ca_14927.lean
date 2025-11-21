import Mathlib

/-- For any complex z, the modulus of cos z is at least the modulus of cos (Re z). -/
theorem abs_cos_ge_abs_re_cos (z : ℂ) : Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos z.re) := by sorry