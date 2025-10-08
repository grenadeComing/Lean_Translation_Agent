import Mathlib

/-- For any complex number z, the modulus of its sine is at least the modulus of the sine of its real part. -/
theorem abs_sin_complex_ge_abs_sin_re (z : Complex) : Complex.abs (Complex.sin z) ≥ |Real.sin z.re| := by sorry
