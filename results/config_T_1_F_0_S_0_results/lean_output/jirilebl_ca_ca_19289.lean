import Mathlib

/-- For any complex z, |sin z| ≤ cosh (Im z). -/
theorem abs_sin_le_cosh (z : ℂ) : Complex.abs (Complex.sin z) ≤ Real.cosh z.im := by sorry
