import Mathlib

/-- Let z ∈ ℂ. Show that |sin z| ≥ |sin (Re z)|. We state this using Complex.abs and coercion of the real sine into ℂ. -/
theorem complex.abs_sin_ge_abs_sin_re (z : ℂ) : Complex.abs (Complex.sin z) ≥ Complex.abs (Complex.ofReal (Real.sin z.re)) := by sorry
