import Mathlib

/-!
Statement translation:
Let z ∈ ℂ. Prove that |sin z| ≤ (1/2) e^{|z|} and |cos z| ≤ (1/2) e^{|z|}.

The proofs are omitted (sorry) as requested; this file only contains the statements.
-/

open Complex

theorem abs_sin_le_half_exp_abs (z : Complex) : Complex.abs (sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cos_le_half_exp_abs (z : Complex) : Complex.abs (cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
