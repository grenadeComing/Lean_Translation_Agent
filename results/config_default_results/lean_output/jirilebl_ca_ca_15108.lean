import Mathlib

/-- For any complex z, the norm of cos z is at least the absolute value of cos (Re z). -/
theorem norm_cos_ge_abs_cos_re (z : ℂ) : ∥Complex.cos z∥ ≥ abs (Real.cos z.re) := by sorry
