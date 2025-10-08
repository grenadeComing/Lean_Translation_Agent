import Mathlib

/-- Let z ∈ ℂ. Prove that |csc z| ≥ |csc (Re z)|. -/
theorem abs_csc_ge_abs_csc_re (z : ℂ) (hz : Complex.sin z ≠ 0) (h : Complex.sin z.re ≠ 0) :
  Complex.abs ((Complex.sin z)⁻¹) ≥ Complex.abs ((Complex.sin z.re)⁻¹) := by sorry
