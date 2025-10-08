import Mathlib

-- For any complex number z, the modulus of sin z is bounded by cosh (Im z).
theorem complex.abs_sin_le_cosh_im (z : Complex) : Complex.abs (Complex.sin z) ≤ Real.cosh (Complex.im z) := by sorry
