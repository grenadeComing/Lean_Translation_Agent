import Mathlib

/-- Let z ∈ ℂ. Show that |cos z| ≥ |cos (Re z)|. -/
theorem abs_cos_complex_ge_re (z : Complex) :
  Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.ofReal (Real.cos z.re)) := by
  sorry
