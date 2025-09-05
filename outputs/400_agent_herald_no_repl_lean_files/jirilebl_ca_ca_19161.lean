import Mathlib

/-!
Let z ∈ ℂ. Prove that |csc z| ≥ |csc (Re z)|.
-/

open Complex

theorem abs_csc_ge_abs_csc_re (z : ℂ) : Complex.abs (Complex.csc z) ≥ Complex.abs (Complex.csc z.re) := by sorry
