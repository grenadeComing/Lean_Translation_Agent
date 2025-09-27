import Mathlib

/-!
Let z ∈ ℂ. Prove that |sinh z| ≤ cosh (Re z).
-/

theorem abs_sinh_le_cosh_re (z : ℂ) : Complex.abs (Complex.sinh z) ≤ Real.cosh z.re := by sorry
