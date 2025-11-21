import Mathlib

/-- Let z ∈ ℂ. Show that |cos z| ≥ |cos (Re z)|. -/
theorem cos_abs_ge_cos_re (z : Complex) :
  abs (Complex.cos z) ≥ abs (Complex.cos (Complex.ofReal z.re)) := by sorry
