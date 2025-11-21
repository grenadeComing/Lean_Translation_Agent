import Mathlib

/-- For any complex number z, the modulus of the complex exponential equals the real exponential of the real part. -/
theorem complex_abs_exp (z : ℂ) : Complex.abs (Complex.exp z) = Real.exp z.re := by sorry