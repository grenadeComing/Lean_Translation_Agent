import Mathlib

/-!
  Statement: Let z ∈ ℂ. Prove that |csc z| ≥ |csc (Re z)|.
  (Translated statement; proof omitted with `by sorry`.)
-/

open Complex

theorem abs_csc_ge_abs_csc_re (z : ℂ) :
  Complex.abs ((Complex.sin z)⁻¹) ≥ Complex.abs ((Complex.sin (Complex.ofReal z.re))⁻¹) := by sorry
