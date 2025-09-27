import Mathlib

/-- For z ∈ ℂ we have |csc z| ≥ |csc (Re z)|, where csc is defined as 1 / sin. -/
lemma complex.abs_csc_ge_abs_csc_re (z : ℂ) : Complex.abs ((1 : ℂ) / Complex.sin z) ≥ Complex.abs ((1 : ℂ) / Complex.sin (z.re)) := by sorry
