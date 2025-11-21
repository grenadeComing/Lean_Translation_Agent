import Mathlib

/-- For any complex number z, the modulus of sin z is at least the modulus of sin of its real part. -/
theorem abs_sin_ge_abs_sin_re (z : ℂ) : |Complex.sin z| ≥ |Complex.sin (z.re : ℂ)| := by sorry