import Mathlib

/-- For any complex z, the modulus of sinh z is at most cosh (Re z). -/
theorem abs_sinh_le_cosh_re (z : Complex) : Complex.abs (Complex.sinh z) ≤ Real.cosh z.re := by sorry
