import Mathlib

/-- Let z in ℂ. Then |sec z| ≥ |sec (Re z)|. -/
theorem abs_sec_ge_abs_sec_re (z : ℂ) : |Complex.sec z| ≥ |Complex.sec (z.re : ℂ)| := by sorry