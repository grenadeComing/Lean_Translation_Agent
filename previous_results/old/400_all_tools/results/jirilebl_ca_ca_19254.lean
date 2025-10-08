import Mathlib

/-- Let z ∈ ℂ. Show that |cos z| ≥ |cos (Re z)|. -/
theorem complex.abs_cos_ge_abs_re (z : ℂ) :
    Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos (z.re : ℂ)) := by
  sorry
