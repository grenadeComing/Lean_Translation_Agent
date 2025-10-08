import Mathlib

/-- For any complex number z, the modulus of sin z is at least the modulus of sin (Re z). -/
theorem abs_sin_complex_ge_abs_sin_re (z : ℂ) : (Complex.sin z).abs ≥ abs (Real.sin z.re) := by
  sorry
