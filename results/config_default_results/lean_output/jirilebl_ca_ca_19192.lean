import Mathlib
open scoped Real

/-- Let z ∈ ℂ. Prove that |sec z| ≥ |sec (Re z)|. -/
theorem abs_sec_le_abs_sec_re (z : ℂ) : |(1 : ℂ) / Complex.cos z| ≥ |(1 : ℝ) / Real.cos z.re| := by
  sorry
