import Mathlib
open scoped Real

/-- Let z : ℂ. Prove that |csc z| ≥ |csc (Re z)|. -/
lemma abs_csc_le_abs_csc_re_tac_1304 (z : ℂ) : Complex.abs (Complex.csc z) ≥ Complex.abs (Complex.csc ↑z.re) := by sorry