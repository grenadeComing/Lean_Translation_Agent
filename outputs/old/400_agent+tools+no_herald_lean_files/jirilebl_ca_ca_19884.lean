import Mathlib

/-!
Let z ∈ ℂ. Prove that Complex.abs (sinh z) ≤ 1/2 * exp (Complex.abs z)
and Complex.abs (cosh z) ≤ 1/2 * exp (Complex.abs z).
We only state these inequalities here; proofs are omitted (use := by sorry).
-/

open Complex

theorem abs_sinh_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sinh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by
  sorry

theorem abs_cosh_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cosh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by
  sorry
