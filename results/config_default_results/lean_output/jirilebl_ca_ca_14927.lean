import Mathlib

/-- For any complex number z, the norm of cos z is at least the norm
of cos (Re z). -/
theorem complex_norm_cos_ge_norm_cos_re (z : ℂ) :
  ‖Complex.cos z‖ ≥ ‖Complex.cos (z.re : ℂ)‖ := by sorry
