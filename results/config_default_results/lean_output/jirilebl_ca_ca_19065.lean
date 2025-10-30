import Mathlib
open scoped Real

/-- Let z ∈ ℂ. Show that |cos z| ≥ |cos (Re z)|. -/
lemma abs_cos_le_abs_re_tac_8259 (z : ℂ) : Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos ↑z.re) := by sorry
