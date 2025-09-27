import Mathlib

/-- For any complex number `z`, the absolute value of `cos z` is at least the absolute
value of `cos (Re z)`. -/
theorem abs_cos_ge_abs_cos_re (z : ℂ) : Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos (z.re : ℂ)) := by sorry
