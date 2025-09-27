import Mathlib

/-- For complex numbers, the hyperbolic cosine equals (e^z + e^{-z})/2. -/
theorem cosh_eq_exp (z : ℂ) : Complex.cosh z = (Complex.exp z + Complex.exp (-z)) / 2 := by sorry

/-- For complex numbers, the hyperbolic sine equals (e^z - e^{-z})/2. -/
theorem sinh_eq_exp (z : ℂ) : Complex.sinh z = (Complex.exp z - Complex.exp (-z)) / 2 := by sorry
