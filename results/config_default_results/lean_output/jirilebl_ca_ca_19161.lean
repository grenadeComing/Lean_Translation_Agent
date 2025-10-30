import Mathlib
open scoped Real

/-- Let z ∈ ℂ. Prove that |csc z| ≥ |csc (Re z)|. -/
theorem abs_csc_ge_abs_csc_re (z : ℂ) : |csc z| ≥ |csc z.re| := by sorry