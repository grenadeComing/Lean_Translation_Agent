import Mathlib

/-!
Let z ∈ ℂ. Prove that |sinh z| ≤ (1/2) e^{|z|} and |cosh z| ≤ (1/2) e^{|z|}.
This file contains the Lean4 translations (statements only, proofs omitted).
-/

theorem abs_sinh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
