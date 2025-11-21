import Mathlib

/-- For complex numbers a and b, the square of the absolute value of a+b equals
    the sum of the squares of the absolute values plus twice the real part of a * conj b. -/
theorem jirilebl_ca_ca_14036 (a b : Complex) :
  Complex.abs (a + b) ^ 2 = Complex.abs a ^ 2 + Complex.abs b ^ 2 + (2 : ℝ) * (Complex.re (a * Complex.conj b)) := by sorry