import Mathlib

/-- Let z ∈ ℂ. Show that |sin z| ≥ |sin (Re z)|. -/
theorem abs_sin_z_ge_abs_sin_re (z : ℂ) : Complex.abs (Complex.sin z) ≥ Complex.abs (Complex.sin (z.re : ℂ)) := by sorry
