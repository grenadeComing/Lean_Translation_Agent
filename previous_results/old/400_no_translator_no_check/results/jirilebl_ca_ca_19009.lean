import Mathlib

/-- For any complex z, cos(i z) = cosh z. -/
theorem complex_cos_I (z : ℂ) : Complex.cos (Complex.I * z) = Complex.cosh z := by
  sorry

/-- For any complex z, sin(i z) = i * sinh z. -/
theorem complex_sin_I (z : ℂ) : Complex.sin (Complex.I * z) = Complex.I * Complex.sinh z := by
  sorry
