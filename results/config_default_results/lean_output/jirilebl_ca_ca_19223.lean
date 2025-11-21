import Mathlib

open Complex

/-- For z ∈ ℂ, the modulus of sin z is at least the modulus of sin (Re z). -/
theorem abs_sin_ge_abs_sin_re (z : Complex) : Complex.abs (Complex.sin z) ≥ |Real.sin z.re| := by sorry