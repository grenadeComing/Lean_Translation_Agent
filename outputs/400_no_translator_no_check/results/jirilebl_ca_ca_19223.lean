import Mathlib

/-- For any complex number z, the modulus of sin z is at least the modulus of sin (Re z). -/
theorem abs_sin_ge_abs_sin_re (z : ℂ) : Complex.abs (Complex.sin z) ≥ Complex.abs (Complex.sin (z.re : ℂ)) := by
  sorry
