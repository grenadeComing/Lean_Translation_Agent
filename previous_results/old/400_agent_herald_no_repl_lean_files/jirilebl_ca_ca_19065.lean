import Mathlib

/-- For any complex number z, the modulus of cos z is at least the modulus of cos (Re z). -/
theorem abs_cos_ge_abs_cos_re (z : ℂ) : Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.ofReal (Real.cos z.re)) := by sorry
