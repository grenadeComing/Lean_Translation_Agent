import Mathlib

open Complex

/-- For z = x + iy, one has |sin z|^2 = sin^2 x + sinh^2 y, so |sin z| ≥ |sin (Re z)|.
Hence the reciprocal inequality for cosecants: |csc z| ≤ |csc (Re z)|. -/
theorem csc_abs_le_of_re (z : ℂ) : Complex.abs (1 / sin z) ≤ Complex.abs (1 / sin (z.re : ℂ)) := by sorry
