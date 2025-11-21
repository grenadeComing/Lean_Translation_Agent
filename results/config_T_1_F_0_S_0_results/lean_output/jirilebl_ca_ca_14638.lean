import Mathlib

/-- For any complex number z, the modulus of tanh z is at most tanh of the modulus of its real part. -/
lemma abs_tanh_le_tanh_abs_re (z : Complex) : abs (Complex.tanh z) ≤ Real.tanh (abs z.re) := by sorry