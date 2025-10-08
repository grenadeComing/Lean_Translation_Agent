import Mathlib

/-- Let z ∈ ℂ. Prove that |csc z| ≥ |csc (Re z)|. We express csc as 1 / sin and cast Re z to complex. -/
lemma abs_csc_ge_abs_csc_re (z : ℂ) : Complex.abs (1 / Complex.sin z) ≥ Complex.abs (1 / Complex.sin (z.re : ℂ)) := by sorry