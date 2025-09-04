import Mathlib

/-!
Translate: Let z ∈ ℂ. Prove that |sinh z| ≤ 1/2 * e^{|z|} and |cosh z| ≤ 1/2 * e^{|z|}.
These are stated here without proof (end with := by sorry).
-/

open Complex

theorem abs_sinh_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sinh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cosh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry
