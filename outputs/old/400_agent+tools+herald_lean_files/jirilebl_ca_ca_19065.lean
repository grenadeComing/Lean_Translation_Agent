import Mathlib

/-- Let z ∈ ℂ. Show that |cos z| ≥ |cos (Re z)|. -/
theorem complex_abs_cos_ge_re (z : Complex) : Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos (z.re : Complex)) := by sorry
