import Mathlib

-- | For any complex number z, |sin z| ≤ cosh (Im z).
theorem abs_sin_le_cosh_im (z : ℂ) : (Complex.sin z).abs ≤ Real.cosh (Complex.im z) := by sorry
