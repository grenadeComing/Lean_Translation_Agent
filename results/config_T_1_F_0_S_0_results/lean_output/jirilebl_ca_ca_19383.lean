import Mathlib

/-! Let z ∈ ℂ. Prove that |sinh z| ≤ cosh (Re z). -/
lemma abs_sinh_le_cosh_re (z : ℂ) : Complex.abs (Complex.sinh z) ≤ Complex.cosh z.re := by sorry