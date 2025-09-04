import Mathlib

/-- For any complex number z, the modulus of sin z is at least the modulus of sin (Re z). -/
theorem complex_abs_sin_ge (z : Complex) : Complex.abs (Complex.sin z) ≥ Complex.abs (Complex.sin (z.re : Complex)) := by sorry
