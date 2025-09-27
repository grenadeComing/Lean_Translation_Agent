import Mathlib

/-- For any complex number z, the modulus of cos z is at least the modulus of cos (Re z). -/
theorem complex.abs_cos_ge_abs_cos_re (z : Complex) : Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos (z.re : Complex)) := by
  sorry
