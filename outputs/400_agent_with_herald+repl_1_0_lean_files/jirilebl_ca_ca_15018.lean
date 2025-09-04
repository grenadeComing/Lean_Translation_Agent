import Mathlib

/-- Let z ∈ ℂ. Prove that |csc z| ≥ |csc (Re z)|. -/
theorem csc_le_csc_re_extracted (z : ℂ) :
  Complex.abs (1 / Complex.sin z) ≥ Complex.abs (1 / Complex.sin (z.re : ℂ)) := by sorry
