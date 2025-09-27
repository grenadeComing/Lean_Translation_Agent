import Mathlib

/-- For any complex z, the modulus of sinh z is bounded by cosh of the real part. -/
theorem abs_sinh_le_cosh_re (z : Complex) : Complex.abs (Complex.sinh z) ≤ Real.cosh z.re := by sorry
