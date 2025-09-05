import Mathlib

/-- For any complex number z, the modulus of sin z is bounded by cosh of its imaginary part. -/
theorem abs_sin_le_cosh_im (z : ℂ) : Complex.abs (Complex.sin z) ≤ Real.cosh (z.im) := by sorry
